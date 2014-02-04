class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nome
      t.string :banco
      t.string :agencia
      t.string :conta

      t.timestamps
    end
  end
end
