class AddTimestampsToArticles < ActiveRecord::Migration[6.1]
  def change
    # add_column :table_name, :column_name, :column_data_type
    add_column :articles, :created_at, :datetime
    add_column :articles, :updated_at, :datetime
  end
end

