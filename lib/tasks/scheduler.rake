# require '../../controllers/send_mail.rb'
desc "This task is called by the Heroku scheduler add-on"
task :send_mail => :environment do
  puts "Sending mail..."
#   user_test()
  puts "done."
end

# task :send_reminders => :environment do
#   User.send_reminders
# end