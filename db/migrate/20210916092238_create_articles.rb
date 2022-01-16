class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title, :unique => true, :null => false
      t.text :description, :unique => true, :null => false
    end
  end
end

