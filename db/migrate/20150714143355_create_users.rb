class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :name_first
      t.string :name_last
      t.string :city
      t.string :state
      t.string :email, null: false, index: { unique: true }
      t.string :password_digest, null: false
      t.string :token, null: false, index: { unique: true }

      t.timestamps null: false
    end
  end
end
