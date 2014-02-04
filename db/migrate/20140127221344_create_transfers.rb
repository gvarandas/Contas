class CreateTransfers < ActiveRecord::Migration
  def change
    create_table :transfers do |t|
      t.integer :usr_pagante
      t.integer :usr_destino
      t.float :valor

      t.timestamps
    end
  end
end
