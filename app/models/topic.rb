class Topic < ApplicationRecord
  

  def self.new_auto
    topic = Topic.new(content: "Hello World", deadline: Time.current )
    topic.save
  end   
  
  # def self.judge
  #   current_time = Time.current.strftime("%H%M")
  #   topics = Topic.where(deadline: time)
  # end

  
end
