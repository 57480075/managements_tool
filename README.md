# テーブル設計

## users テーブル

| Column             | Type   | Option                    |
| ------------------ | ------ | ------------------------- |
| name               | string | null: false               |
| email              | string | null: false, unique: true |
| id                 | string | null: false               |
| encrypted_password | string | null: false               |

### Association

- has_many :task_opens
- has_many :task_closes





## task_opens テーブル

| Column       | Type       | Option                         |
| ------------ | ---------- | ------------------------------ |
| clean_id     | string     | null: false                    |
| money_id     | integer    | null: false                    |
| trouble_id   | integer    | null: false                    |
| sales_target | string     | null: false                    |
| checker      | string     | null: false                    |
| user         | references | null: false, foreign_key :true |

### Association

- belongs_to :user




## task_closes テーブル

| Column       | Type       | Option                         |
| ------------ | ---------- | ------------------------------ |
| clean_id     | string     | null: false                    |
| money_id     | integer    | null: false                    |
| trouble_id   | integer    | null: false                    |
| sales_result | string     | null: false                    |
| checker      | string     | null: false                    |
| user         | references | null: false, foreign_key :true |

### Association

- belongs_to :user





## task_end_months テーブル

| Column     | Type       | Option                         |
| ---------- | ---------- | ------------------------------ |
| end_result | string     | null: false                    |
| end_report | integer    | null: false                    |
| checker    | string     | null: false                    |
| user       | references | null: false, foreign_key :true |

### Association

- belongs_to :user
