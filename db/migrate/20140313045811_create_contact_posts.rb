class CreateContactPosts < ActiveRecord::Migration
  def change
    create_table :contact_posts do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
