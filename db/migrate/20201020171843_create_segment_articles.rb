class CreateSegmentArticles < ActiveRecord::Migration
  def change
    create_table :segment_articles do |t|
      t.references :segment, index: true, foreign_key: true, null: false
      t.integer :order, null: false

      t.timestamps null: false
    end

    change_table :articles do |t|
      t.references :segment_article, index: true, foreign_key: true
    end
  end
end
