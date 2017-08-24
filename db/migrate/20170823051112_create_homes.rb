class CreateHomes < ActiveRecord::Migration[5.1]
  def change
    create_table :homes do |t|
      t.text :address
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
