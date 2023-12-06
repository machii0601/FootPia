class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :first_name_kana
      t.string :last_name_kana
      t.string :password, null: false
      t.string :profile_image
      t.string :email, null: false
      t.string :soccer_futsal_experience
      t.string :position
      t.text :bio
      t.timestamps
    end
  end
end
