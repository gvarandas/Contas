class CreateDespesas < ActiveRecord::Migration
  def change
    create_table :despesas do |t|
      t.string :nome
      t.float :valor
      t.integer :recorrente
      t.integer :mes_ref
      t.integer :ano_ref
      t.integer :usr_pag

      t.timestamps
    end
  end
end
