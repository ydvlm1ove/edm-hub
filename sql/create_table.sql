-- データベース
CREATE DATABASE EDM_Portfolio;

--アーティストテーブル
CREATE TABLE artists (
    id              INT             NOT NULL   AUTO_INCREMENT COMMENT  'ID',
    name            VARCHAR(100)    NOT NULL   UNIQUE         COMMENT  'アーティスト名',
    main_genre      VARCHAR(50)                               COMMENT  'メインジャンル',
    sub_genre      VARCHAR(50)                                COMMENT  'サブジャンル',
    is_seen         TINYINT DEFAULT 0                         COMMENT  '生で見たかどうか',
    description     TEXT                                      COMMENT  '説明/備考',

    PRIMARY KEY(id)
)

-- アーティストライブ映像テーブル
CREATE TABLE artist_live_set (
    id              INT             NOT NULL   AUTO_INCREMENT    COMMENT  'ID',
    artist_id       INT             NOT NULL                     COMMENT  'アーティストID',
    title           VARCHAR(255)    NOT NULL                     COMMENT  'タイトル',
    youtube_url     VARCHAR(255)    NOT NULL                     COMMENT  'URL',
    description     TEXT                                        COMMENT  '説明/備考',

    PRIMARY KEY(id),
    Foreign Key(artist_id) REFERENCES artists(id) ON DELETE CASCADE
);
