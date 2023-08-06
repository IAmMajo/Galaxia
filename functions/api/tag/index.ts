import { D1QB } from "workers-qb";
import Env from "../../interfaces/Env";
import Tag from "../../interfaces/Tag";
import adminAuthentication from "../../middlewares/adminAuthentication";
import jsonParsing from "../../middlewares/jsonParsing";

export const onRequestGet: PagesFunction<Env> = async (context) =>
  new Response(
    JSON.stringify(
      (
        await (new D1QB(context.env.DB)
          .fetchAll({ tableName: "tag", fields: "*" })
          .execute() as Promise<D1Result<Tag>>)
      ).results
    )
  );

export const onRequestPost = [
  adminAuthentication,
  jsonParsing,
  (async (context) => {
    const tag = context.data.json;
    if (tag.id || !tag.name) {
      return new Response(null, { status: 422 });
    }
    return new Response(
      JSON.stringify(
        (
          await new D1QB(context.env.DB)
            .insert({
              tableName: "tag",
              data: { name: tag.name },
              returning: "id",
            })
            .execute()
        ).results
      ),
      { status: 201 }
    );
  }) as PagesFunction<Env, any, { json: Tag }>,
];
