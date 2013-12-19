CREATE TABLE tumblr (
  interaction_id VARCHAR(64) PRIMARY KEY,
  created_at TIMESTAMP NOT NULL,
  dialogue_label TEXT NULL,
  dialogue_phrase TEXT NULL,
  player TEXT NULL,
  blogid TEXT NULL,
  dest_blogid TEXT NULL,
  dest_postid TEXT NULL,
  parent_blogid TEXT NULL,
  parent_postid TEXT NULL,
  root_blogid TEXT NULL,
  root_postid TEXT NULL,
  source_blogid TEXT NULL,
  duration TEXT NULL,
  tumblr_id VARCHAR(64) NULL,
  likes_global INTEGER NULL,
  likes_local INTEGER NULL,
  reblogged_global INTEGER NULL,
  description text NULL,
  original_type VARCHAR(64) NULL,
  original_url TEXT NULL,
  note_count INT NULL,
  thumbnail_url TEXT NULL,
  thumbnail_height TEXT NULL,
  thumbnail_width TEXT NULL,
  activity TEXT NULL,
  album_art TEXT NULL,
  answer TEXT NULL,
  artist TEXT NULL,
  asking_name VARCHAR(64) NULL,
  asking_url TEXT NULL,
  audio_url TEXT NULL,
  blog_name VARCHAR(64) NULL,
  body TEXT NULL,
  caption TEXT NULL,
  format TEXT NULL,
  image_permalink TEXT NULL,
  post_url TEXT NULL,
  question TEXT NULL,
  reblog_key TEXT NULL,
  short_url TEXT NULL,
  slug TEXT NULL,
  source_html TEXT NULL,
  source_title TEXT NULL,
  source_url TEXT NULL,
  state TEXT NULL,
  txt TEXT NULL,
  title TEXT NULL,
  track_name VARCHAR(64) NULL,
  post_type VARCHAR(64) NULL,
  url TEXT NULL,
  video_url TEXT NULL,
);
CREATE INDEX tumblr_created_at_idx ON tumblr (created_at);
