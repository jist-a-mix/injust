class AddSlugToPosts < ActiveRecord::Migration[5.2]
  
    change_table :posts do |t|
    t.string :slug, after: :id
  end
end
