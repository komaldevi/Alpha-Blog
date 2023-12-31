# frozen_string_literal: true

class AddDeviseToUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :email

      ## Recoverable

      t.string :password_digest
      t.string :username
      t.string :password
      t.boolean :admin, default: false
    end
  end
end
