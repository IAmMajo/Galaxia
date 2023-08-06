import { D1QB } from "workers-qb";
import Env from "../../interfaces/Env";
import Platform from "../../interfaces/Platform";

export const onRequestGet: PagesFunction<Env> = async (context) =>
  new Response(
    JSON.stringify(
      (
        await (new D1QB(context.env.DB)
          .fetchAll({ tableName: "platform", fields: "*" })
          .execute() as Promise<D1Result<Platform>>)
      ).results
    )
  );
