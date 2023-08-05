-- Migration number: 0000 	 2023-08-05T15:59:32.721Z

CREATE TABLE user (
  id TEXT PRIMARY KEY,
  is_admin INTEGER NOT NULL
) STRICT, WITHOUT ROWID;

CREATE TABLE list (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT NOT NULL,
  image TEXT NOT NULL,
  creation_date TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  user_id TEXT NOT NULL,
  "order" INTEGER NOT NULL,
  UNIQUE(user_id, name),
  FOREIGN KEY(user_id) REFERENCES user(id)
) STRICT;

CREATE TABLE platform (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL UNIQUE
) STRICT;

CREATE TABLE user_platform (
  user_id TEXT,
  platform_id INTEGER,
  PRIMARY KEY(user_id, platform_id),
  FOREIGN KEY(user_id) REFERENCES user(id),
  FOREIGN KEY(platform_id) REFERENCES platform(id)
) STRICT, WITHOUT ROWID;

CREATE TABLE content (
  id INTEGER PRIMARY KEY,
  title TEXT NOT NULL,
  description TEXT NOT NULL,
  logo TEXT NOT NULL,
  image TEXT NOT NULL,
  video TEXT NOT NULL,
  recommended_age INTEGER NOT NULL,
  release_date TEXT NOT NULL
) STRICT;

CREATE TABLE list_content (
  id INTEGER PRIMARY KEY,
  list_id INTEGER,
  content_id INTEGER,
  position INTEGER NOT NULL,
  added_date TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE(list_id, position),
  FOREIGN KEY(list_id) REFERENCES list(id),
  FOREIGN KEY(content_id) REFERENCES content(id)
) STRICT;

CREATE TABLE content_platform (
  content_id INTEGER,
  platform_id INTEGER,
  link TEXT NOT NULL,
  from_date TEXT NOT NULL,
  until_date TEXT NOT NULL,
  PRIMARY KEY(content_id, platform_id),
  FOREIGN KEY(content_id) REFERENCES content(id),
  FOREIGN KEY(platform_id) REFERENCES platform(id)
) STRICT, WITHOUT ROWID;

CREATE TABLE actor (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  image TEXT NOT NULL
) STRICT;

CREATE TABLE content_actor (
  content_id INTEGER,
  actor_id INTEGER,
  "order" INTEGER NOT NULL,
  role TEXT NOT NULL,
  PRIMARY KEY(content_id, actor_id),
  FOREIGN KEY(content_id) REFERENCES content(id),
  FOREIGN KEY(actor_id) REFERENCES actor(id)
) STRICT, WITHOUT ROWID;

CREATE TABLE tag (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL UNIQUE
) STRICT;

CREATE TABLE content_tag (
  content_id INTEGER,
  tag_id INTEGER,
  PRIMARY KEY(content_id, tag_id),
  FOREIGN KEY(content_id) REFERENCES content(id),
  FOREIGN KEY(tag_id) REFERENCES tag(id)
) STRICT, WITHOUT ROWID;
