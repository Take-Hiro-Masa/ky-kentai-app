# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# coding: utf-8
Notification.create!(
  construction_name: '恵那峡大橋補修工事',
  contractor: '竹橋建設',
  industrial_accident: '12-3-45-678912-345',
  order_source: '恵那市役所建設部建設課',
  process: '令和2年3月10日〜令和3年3月10日',
  slogan: '安全帯',
  created_at: '2020-02-29 19:25:53',
  updated_at: '2020-02-29 19:25:53'
)

Company.create(
  company_name: '広瀬建設',
  postal_code: '509-7201',
  prefecture: '岐阜県',
  city: '恵那市大井町',
  block: '青山1−1−1',
  building: '柳',
  phone_num: '052−111−1111',
  Representative: '尾崎'
)
