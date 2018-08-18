class CreateTaggings < ActiveRecord::Migration[5.1]
  def change
    create_table :taggings do |t|
      t.string :tag
      t.string :references
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
