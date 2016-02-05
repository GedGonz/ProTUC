class CreateTucs < ActiveRecord::Migration
  def change
    create_table :tucs do |t|
      t.integer :numerotarjeta
      t.datetime :fechacrea
      t.references :usuario, index: true, foreign_key: true
    end
  end
end
