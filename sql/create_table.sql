-- データベース
CREATE DATABASE EDM_Portfolio;

-- 既存のテーブルがあれば安全に削除
DROP TABLE IF EXISTS artist_genres;
DROP TABLE IF EXISTS genres;
DROP TABLE IF EXISTS artists;

-- アーティスト基本情報テーブル
CREATE TABLE artists (
    id          INT             NOT NULL   AUTO_INCREMENT COMMENT 'ID',
    name        VARCHAR(100)    NOT NULL   UNIQUE         COMMENT 'アーティスト名',
    is_seen     TINYINT DEFAULT 0                         COMMENT '生で見たかどうか（1:見た, 0:見てない）',
    description TEXT                                      COMMENT '説明/備考',

    PRIMARY KEY(id)
);

-- ジャンルマスターテーブル（ジャンル図鑑）
CREATE TABLE genres (
    id          INT             NOT NULL   AUTO_INCREMENT COMMENT 'ID',
    name        VARCHAR(50)     NOT NULL   UNIQUE         COMMENT '表示名（例: Progressive House）',
    slug        VARCHAR(50)     NOT NULL   UNIQUE         COMMENT 'システム用識別子（例: progressive_house）',
    category    VARCHAR(20)     NOT NULL                  COMMENT '5大ジャンル分類（例: House, Bass等）',

    PRIMARY KEY(id)
);

-- アーティストとジャンルを紐付ける中間テーブル
CREATE TABLE artist_genres (
    artist_id   INT             NOT NULL,
    genre_id    INT             NOT NULL,

    PRIMARY KEY(artist_id, genre_id),
    FOREIGN KEY(artist_id) REFERENCES artists(id) ON DELETE CASCADE,
    FOREIGN KEY(genre_id) REFERENCES genres(id) ON DELETE CASCADE
);
