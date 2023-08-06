import Actor from "./Actor";

export default interface Content {
  id?: number;
  title?: string;
  description?: string;
  logo?: string;
  image?: string;
  video?: string;
  recommendedAge?: 0 | 6 | 12 | 16 | 18;
  releaseDate?: string;
  tags?: (number | string)[];
  actors?: ({ order?: number; role?: string } & Actor)[];
  platforms?: {
    id?: number;
    link?: string;
    fromDate?: string;
    toDate?: string;
  }[];
}
