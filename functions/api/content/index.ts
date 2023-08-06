import Content from "../../interfaces/Content";
import Env from "../../interfaces/Env";
import adminAuthentication from "../../middlewares/adminAuthentication";
import jsonParsing from "../../middlewares/jsonParsing";

export const onRequestGet: PagesFunction<Env> = () => {
  return new Response("Hello World!");
};

export const onRequestPost = [
  adminAuthentication,
  jsonParsing,
  (() => {
    return new Response(null, { status: 201 });
  }) as PagesFunction<Env, any, { json: Content }>,
];
