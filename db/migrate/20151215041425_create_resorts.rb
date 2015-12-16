class CreateResorts < ActiveRecord::Migration
  def change
    create_table :resorts do |t|
      t.string :name
      t.string :link
      t.string :powder
      t.string :lifts
      t.string :liftstats
      t.string :open

      t.timestamps null: false
    end
  end
end
