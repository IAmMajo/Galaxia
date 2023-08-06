import { D1QB } from "workers-qb";
import Env from "../../interfaces/Env";
import adminAuthentication from "../../middlewares/adminAuthentication";
import jsonParsing from "../../middlewares/jsonParsing";
import Actor from "../../interfaces/Actor";

export const onRequestGet: PagesFunction<Env> = async (context) =>
  new Response(
    JSON.stringify(
      (
        await (new D1QB(context.env.DB)
          .fetchAll({ tableName: "actor", fields: "*" })
          .execute() as Promise<D1Result<Actor>>)
      ).results.map((actor) => {
        actor.image = `https://galaxiacontent.maxoverlack.dev${actor.image}`;
        return actor;
      })
    )
  );

export const onRequestPost = [
  adminAuthentication,
  jsonParsing,
  (async (context) => {
    const actor = context.data.json;
    if (actor.id || !actor.name) {
      return new Response(null, { status: 422 });
    }
    if (actor.image) {
      try {
        actor.image = atob(actor.image);
      } catch {
        return new Response(null, { status: 422 });
      }
    }
    const env = context.env;
    const db = new D1QB(env.DB);
    const results = (
      await db
        .insert({
          tableName: "actor",
          data: { name: actor.name, image: "" },
          returning: "id",
        })
        .execute()
    ).results;
    const id = results.id;
    const image = actor.image;
    if (image) {
      await env.CONTENT.put(`actor/${id}.jpeg`, image);
      await db.update({
        tableName: "actor",
        data: { image: `/actor/${id}.jpeg` },
        where: { conditions: "id = ?1", params: [id] },
      }).execute();
    }
    return new Response(JSON.stringify(results), { status: 201 });
  }) as PagesFunction<Env, any, { json: Actor }>,
];
