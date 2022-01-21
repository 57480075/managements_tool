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





# アプリケーション紹介文

| アプリケーション名   | MANAGEMENTS TOOL                                                                                        |
| -------------------- | ------------------------------------------------------------------------------------------------------- |
| アプリケーション概要 | 開店時・閉店時のチェックを行う事ができる                                                                |
| URL                  | https://managements-tool.herokuapp.com/                                                                 |
| テスト用アカウント   | メールアドレス: a@a.com                                                                                 |
| テスト用アカウント   | パスワード    : poi123                                                                                  |
| ユーザー認証         | ユーザー名: admin                                                                                       |
| ユーザー認証         | パスワード: 2222                                                                                        |
| 利用方法             | ログイン後、OPEN CHECKボタンよりオープンチェックを行う                                                  |
| 利用方法             | OPEN CHECK履歴よりチェックした履歴を確認する                                                            |
| 目指した課題解決     | 飲食店の管理者を対象に、日々の業務で使用するコピー紙の削減に貢献しています                              |
| 洗い出した要件       | https://docs.google.com/spreadsheets/d/1uHmO_3uGRJS6UCA4DEiY7cTbfAgEtbxTyD8FWPRKoHI/edit#gid=282075926  |
| 実装予定の機能       | OPEN/CLOSEのチェックは１日一回のみとする機能を実装予定                                                  |
