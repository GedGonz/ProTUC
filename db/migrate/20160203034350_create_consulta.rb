class CreateConsulta < ActiveRecord::Migration
  def change
    create_table :consulta do |t|
      t.decimal :saldo
      t.datetime :fechacrea
      t.references :tuc, index: true, foreign_key: true

    end
  end
end
