import Env from "../interfaces/Env";

export default (async (context) => {
  const request = context.request;
  if (request.headers.get("Content-Type") !== "application/json") {
    return new Response(null, { status: 415 });
  }
  try {
    context.data.json = await request.json();
  } catch {
    return new Response(null, { status: 415 });
  }
  return context.next();
}) as PagesFunction<Env>;
