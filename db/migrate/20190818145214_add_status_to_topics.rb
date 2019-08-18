class AddStatusToTopics < ActiveRecord::Migration[5.2]
  def change
    add_column :topics, :status, :string, default: "judging", null: "judging"
  end
end
