class AddDeadlineIdToTopics < ActiveRecord::Migration[5.2]
  def change
    add_column :topics, :deadline_id, :integer, default: 1111, null: 1111
  end
end
