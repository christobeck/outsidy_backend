class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.string :spacetype
      t.string :location
      t.string :views
      t.boolean :food
      t.boolean :alcohol
      t.boolean :wifi
      t.references :venue, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
