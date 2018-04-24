class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :current_city
      t.string :user_photo, :default => "avatar.png"
      t.binary :user_photo_b

      t.timestamps
    end
  end
end
