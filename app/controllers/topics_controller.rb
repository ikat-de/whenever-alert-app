class TopicsController < ApplicationController
  
  def index
    @topics = Topic.all
    
    current_time_id = Time.current.strftime("%H%M")
    
    @failure_topics =  Topic.where(deadline_id: current_time_id)
    
    @failure_topics.each do |failure_topic|
     failure_topic.status = "failure"
     failure_topic.save
    end
  end
  
  def create
    @topic = Topic.new(content: params[:content], deadline: params[:deadline])
    @topic.deadline_id = @topic.deadline.strftime("%H%M")
    @topic.save
    redirect_to action: :index
  end
  
  def success
    @topic = Topic.find_by(id: params[:topic_id])
    @topic.status = "success"
    @topic.save

    redirect_to action: :index
  end
  

  
  
  def destroy
    @topics = Topic.all
    
    @topics.each do |topic|
      topic.destroy
    end
    
    redirect_to action: :index
  end
  
end
