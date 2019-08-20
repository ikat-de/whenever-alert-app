class Topic < ApplicationRecord
  

  def self.new_auto
    topic = Topic.new(content: "Hello World", deadline: Time.current )
    topic.save
  end   
  
  def self.failure_auto
    failure_topic =  Topic.where(deadline_id: current_time_id)
    failure_topic.status = "failure"
    failure_topic.save
  end

  
end
