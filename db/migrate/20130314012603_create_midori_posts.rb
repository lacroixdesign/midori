class CreateMidoriPosts < ActiveRecord::Migration
  def change
    create_table :midori_posts do |t|
      t.string :title
      t.string :slug
      t.date :date
      t.text :body
      t.references :image
      t.string :status
      t.string :type
      t.text :properties

      t.timestamps
    end
    add_index :midori_posts, :image_id
  end
end
