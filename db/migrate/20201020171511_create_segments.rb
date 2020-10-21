class CreateSegments < ActiveRecord::Migration
  def change
    create_table :segments do |t|
      t.string :title, null: false

      t.timestamps null: false
    end
  end
end
