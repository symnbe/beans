class RemovePublishedFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :published, :boolean
  end
end