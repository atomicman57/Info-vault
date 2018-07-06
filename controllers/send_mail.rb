require "sinatra"
require 'sinatra/activerecord'
require './config/environments' #database configuration
require './models/model'
require 'json'

def user_test
    users = User.all
    # if users
    User.all do |user|
           p user
    #    end
        # p JSON.generate users.load
    end
end