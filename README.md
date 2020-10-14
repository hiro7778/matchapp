# テーブル設計

## users テーブル

| Column          | Type    | Options     |
| --------------- | ------- | ----------- |
| nickname        | string  | null: false |
| gender          | string  | null: false |
| email           | string  | null: false |
| password        | string  | null: false |
| age             | string  | null: false |
| birth_date      | date    | null: false |
| area_id         | integer | null: false |

### Association

- has_many :messages
- has_many :users_rooms
- has_many :rooms, thought: users_rooms
- has_one :profiles
- has_many :likes

## rooms テーブル

| Column          | Type    | Options     |
| --------------- | ------- | ----------- |
| name            | string  | null: false |

### Association

- belongs_to :users
- has_many :messages

## messages テーブル

| Column    | Type       | Options                        |
| ----------| ---------- | ------------------------------ |
| text      | text       | null: false                    |
| user      | references | null: false, foreign_key: true |
| room      | references | null: false, foreign_key: true |

### Association

- belongs_to :users
- belongs_to :rooms

## profiles テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| icon      | string     | null: false                    |
| profile   | text       | null: false                    |
| list      | references | null: false, foreign_key: true |

### Association

- belongs_to : users
- has_one :lists

## lists テーブル

| Column          | Type    | Options     |
| --------------- | ------- | ----------- |
| list            | string  | null: false |

### Association

- belongs_to :profiles

## likes テーブル

| Column          | Type    | Options     |
| --------------- | ------- | ----------- |
| like            | string  | null: false |

### Association

- belongs_to :users