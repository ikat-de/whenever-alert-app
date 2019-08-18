# require File.expand_path(File.dirname(__FILE__) + "/environment")

set :environment, "development"
set :output, 'log/cron.log'
set :path, "/home/ec2-user/environment/rails_projects/whenever-alert-app"

every 1.minute do
  runner 'Topic.new_auto'
end