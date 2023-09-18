class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.integer :featured_by_id
      t.date :featured_till

      t.timestamps
    end
  end
end
