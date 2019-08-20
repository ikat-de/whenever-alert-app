class AddDefaultToTopics < ActiveRecord::Migration[5.2]
  def change
    change_column_default :topics, :content, "content"
    change_column_null :topics, :content, "content"
    change_column_default :topics, :deadline, Time.current
    change_column_null :topics, :deadline, Time.current
  end
end
