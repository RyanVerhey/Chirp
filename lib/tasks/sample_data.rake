require 'faker'

namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    make_users
    # make_restaurants
    # make_reviews
  end
end

def make_users
  50.times do |n|
    username = Faker::Name.first_name
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    password = "password"
    email = Faker::Internet.email
    User.create!(username: username,
                first_name: first_name,
                last_name: last_name,
                password: password,
                password_confirmation: password,
                email: email)
  end
end