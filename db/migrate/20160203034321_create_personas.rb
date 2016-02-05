class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :nombre
      t.string :apellido
      t.string :pais
      t.string :email
      t.datetime :fechacrea
    end
  end
end
