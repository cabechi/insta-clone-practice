# frozen_string_literal: true

class SorceryCore < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :crypted_password
      t.string :salt
      t.string :username, null: false

      t.timestamps null: false
    end

    add_index :users, :email, unique: true
  end
end
