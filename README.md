# テーブル設計

## users テーブル

| Column     | Type       | Options                        |
| ------     | ---------- | ------------------------------ |
| email      | string     | null: false,                   |
| password   | string     | null: false,                   |

### Association
has_many :messages

## events テーブル

| Column       | Type       | Options                        |
| ------       | ---------- | ------------------------------ |
| name         | string     | null: false,                   |
| content      | text       | null: false,                   |
| smart_time   | datetime   | null: false,                   |
| phone_number | string     | null: false,                   |
| member       | string     | null: false,                   |


##  messageテーブル

| Column       | Type       | Options                        |
| message      | string     | null: false,                   |
| member       | string     | null: false,                   |
| smart_time   | datetime   | null: false,                   |

### Association
belongs :user

