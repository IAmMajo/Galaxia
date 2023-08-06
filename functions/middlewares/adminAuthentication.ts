import Env from "../interfaces/Env";

export default ((context) => {
  const env = context.env;
  if (env.ENVIRONMENT === "development") {
    return context.next();
  }
  const authorization = context.request.headers.get("Authorization");
  if (!authorization) {
    return new Response(null, { status: 403 });
  }
  const token = authorization.slice(7);
  if (token === env.API_TOKEN) {
    return context.next();
  }

  // TODO: Additionally integrate with Firebase Authentication

  return new Response(null, { status: 403 });
}) as PagesFunction<Env>;
