<h1 align="center"> 簡易安全掲示板（建設現場）</h3>

- 建設現場に設置される安全掲示板を見ることができる 
- 職人がKY活動表を書き提出できる
- 提出したKY活動表が掲示板に張り出される
  
![keijiban](安全掲示板２.png)
  
#### 建設現場に張り出される安全掲示板とは 
- KY（危険予知）活動と言われる活動があり、その活動内容をKY活動表と言われる書類に書き、張り出す場所  
- 現場に関する様々な情報が掲載されている    
##### KY活動表 
![ky](KY活動表.png)
  
##### 現登録ユーザー（試用）
ID：asd@asdasd  
PW：asdasdasd
  
##  APP URL  
https://ky-kentai.herokuapp.com/  
  
## 制作背景  
建設現場で長年働いてきました。作業中に大怪我をした時に建設現場のある慣例に疑問を感じました。  
安全掲示板とKY活動です。誰が誰に向けて行なっている活動かわからないのです。  
怪我をした時の言い訳のために、事故を捜査する方々に向けての活動になっていると感じ、  
安全掲示板が誰でもネット上で見れたら、、、と制作しました。

  
## 今後  
- 新規入場書類提出  
- その他現場関連書類の種類別提出  
- タイムカード  
- 下請け会社情報管理  
- 職人情報管理  
- チャット機能  
- 現場内、全員の健康管理  
  
#### 建設現場に特化した総合的な勤怠アプリを目指します。  
特徴として  
- 現場で提出する書類の紙レス化  
- PCやタブレット、スマホなどから書類作成
- 安全掲示板を誰でも見れる  
- 下請け会社や職人の管理がしやすい（資格や健康診断などの詳細を含んだ新規入場や日報など）  
- また、建設現場では未だに手書きの紙で新規入場やKY活動表などを記入&提出しているため、  
アプリで出来たらいいな、と感じたので今後実装していき総合的な勤怠アプリを目指します。
  
## Author
- [GitHub](https://github.com/Take-Hiro-Masa)


## usersテーブル

|Column|Type|Options|
|------|----|-------|
|email|string|null: false, default: ""|
|encrypted_password|string|null: false, default: ""|
|f_name|string|null: false|
|l_name|string|null: false|
|f_name_kana|string|null: false|
|l_name_kana|string|null: false|
|gender|string|null: false|
|birth_yyyy_id|integer|null: false|
|birth_mm_id|integer|null: false|
|birth_dd_id|integer|null: false|
|job_type|string|null: false|
|blood_type|string|null: false|
|company_id|bigint|null: false, foreign_key: true, index: true|

### Association
- belongs_to :company
- has_many :reports

## reportsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true, index: true|     
|work_site|string|null: false|
|work_content|string|null: false|
|leader|string|null: false|
|safety_goals|string|null: false|
|workers|string|null: false|
|ky|text|null: false|
|measures|text|null: false|
|sign|text|null: false|
|company_id|bigint|null: false, foreign_key: true, index: true|

### Association
- belongs_to :user
- belongs_to :company
- belongs_to :notifications

## companiesテーブル

|Column|Type|Options|
|------|----|-------|
|company_name|string|null: false|
|postal_code|string|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|block|string|null: false|
|building|string||
|phone_num|string|null: false|
|Representative|string|null: false|

### Association

- has_many :users
- has_one :report
- belongs_to :notifications

### notificationsテーブル

|Column|Type|Options|
|------|----|-------|
|report_id|references|null: false, foreign_key: true, index: true|
|company_id|references|null: false, foreign_key: true, index: true|
|construction_name|string|null: false|
|contractor|string|null: false|
|industrial_accident|string null: false|
|order_source|string|null: false|
|process|string|null: false|
|slogan|string|null: false|

### Association

- has_many :company
- has_many :report
