USE monolith_app_db;

CREATE TABLE IF NOT EXISTS posts (
  uuid varchar(36) NOT NULL,
  title varchar(255) NOT NULL,
  PRIMARY KEY (uuid)
);

CREATE TABLE IF NOT EXISTS comments (
  uuid varchar(36) NOT NULL,
  post_uuid varchar(36) NOT NULL,
  content varchar(300) NOT NULL,
  status varchar(15) NOT NULL,
  PRIMARY KEY (uuid)
);