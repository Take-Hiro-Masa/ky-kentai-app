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

User.create(
  email: 'asd@asdasd',
  encrypted_password: 'asdasdasd',
  f_name: '廣瀬',
  l_name: '賢聡',
  f_name_kana: 'ヒロセ',
  l_name_kana: 'マサトシ',
  gender: '男性',
  birth_yyyy: '2002',
  birth_mm: '2',
  birth_dd: '2',
  job_type: '土工',
  blood_type: 'A',
  created_at: '2020-02-29 19:30:20',
  updated_at: '2020-02-29 19:30:20'
)
