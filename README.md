#  簡易安全掲示板（建設現場）  
建設現場に設置される安全掲示板を見ることができる  
#### 建設現場に張り出される安全掲示板とは 
- KY（危険予知）活動と言われる活動があり、その活動内容をKY活動表と言われる書類に書き、張り出す場所  
- 現場に関する様々な情報が掲載されている  



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
