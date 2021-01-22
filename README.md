# アプリケーション名
yoyaku2_app
# アプリケーション概要
ユーザー登録なしで簡単に予約できるアプリ
# URL
http://52.69.74.174
# テスト用アカウント
email aaa@aaa
password aaa111
# ペルソナ
飲食店経営者で自社の予約サイトが欲しい方
# 利用方法
予約する側はただ予約ボタンを押して、情報を入力するだけです。
店舗側ではログインをして、予約状況を確認
# 目指した課題解決
ログインなどをしなくても簡単に予約ができる様にしたい
# 洗い出した要件
カレンダーの作成
予約ボタンの作成
予約ページの作成
店舗側のページ
メッセージ送信ボタン
メッセージ入力ページの作成
ユーザー管理機能
店舗側のカレンダー
# 実装した機能についてのGIFと説明
お客様はカレンダーを見て空いてる日に予約を入れレます。
カレンダーには店舗側のみ編集することが出来ます。

# ローカルでの動作方法
rails 2.6.5

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
