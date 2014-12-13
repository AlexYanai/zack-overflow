class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :role
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
