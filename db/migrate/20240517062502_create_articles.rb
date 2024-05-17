class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.integer :lock_version

      t.timestamps
    end
  end
end
