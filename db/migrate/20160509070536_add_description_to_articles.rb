class AddDescriptionToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :description , :text
    add_column :articles, :created_at  , :datetime  # must be created_at , or ruby wouldn't tracee it
    add_column :articles, :updated_at  , :datetime  # must be updated_at , or ruby wouldn't tracee it
  end
end
