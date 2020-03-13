# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :nickname,             null: false, comment: "ニックネーム"
      t.string :email,                null: false, comment: "メールアドレス"
      t.string :password,             null: false, comment: "パスワード"
      t.string :password_confirmation,null: false, comment: "パスワード（確認用）"
      t.string :encrypted_password,   null: false, default: ""
      t.string :last_name,            null: false, comment: "姓"
      t.string :first_name,           null: false, comment: "名"
      t.string :last_name_jp,         null: false, comment: "姓カナ"
      t.string :first_name_jp,        null: false, comment: "名カナ"
      t.date   :birth_date,           null: false, comment: "生年月日"
      t.integer :phone_number,        nique: true, comment: "電話番号"
      t.text :profile,                             comment: "自己紹介文"
      t.text :icon,                                comment: "アイコン"   
      t.timestamps                    null: false
    end

    add_index :users, :email,       　unique: true
  end
end