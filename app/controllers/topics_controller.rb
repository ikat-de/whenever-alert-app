class TopicsController < ApplicationController
  
  def index
    @topics = Topic.all
  end
  
  def create
    @topic = Topic.new(content: params[:content], deadline: params[:deadline])
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
