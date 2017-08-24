class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name
      t.references :section, foreign_key: true
      t.references :pc, foreign_key: true

      t.timestamps
    end
  end
end
