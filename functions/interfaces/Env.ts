export default interface Env {
  ENVIRONMENT: "development" | "preview" | "production";
  API_TOKEN: string;
  DB: D1Database;
  CONTENT: R2Bucket;
}
