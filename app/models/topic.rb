class Topic < ApplicationRecord
  
  validates :content, presence: true  
  validates :deadline, presence: true  
  

  # def self.new_auto
  #   topic = Topic.new(content: "Hello World", deadline: Time.current )
  #   topic.save
  # end   
  
  # def self.failure_auto
  #   current_time_id = Time.current.strftime("%H%M")

  #   failure_topic =  Topic.where(deadline_id: current_time_id)
  #   failure_topic.status = "failure"
  #   failure_topic.save
  # end

  
  def self.failure_auto
    current_time_id = Time.current.strftime("%H%M")
    failure_topics =  Topic.where(deadline_id: current_time_id)
    failure_topics.each do |failure_topic|
      case failure_topic.status
      when "judging"
        failure_topic.status = "failure"
        failure_topic.save
      end
    end
  end
  
end
