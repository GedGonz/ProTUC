class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :username
      t.string :pasword
      t.datetime :fechacrea
      t.references :persona, index: true, foreign_key: true
    end
  end
end
