require './app'
require 'sinatra/activerecord/rake'
require './controllers/send_mail.rb'

# require './lib/tasks/scheduler'

desc "This task is called by the Heroku scheduler add-on"
task :send_heroku_mail => :environment do
  puts "Sending mail..."
#   user_test()
  puts "done."
end

desc "This task is called by the Heroku scheduler add-on"
task :send_mail do
  puts "Sending mail..."
  user_test()
  puts "done."
end
