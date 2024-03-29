require 'faker'

User.delete_all

# Create 500 users
users = 500.times.map do
  User.create :first_name => Faker::Name.first_name,
              :last_name  => Faker::Name.last_name,
              :email      => Faker::Internet.email,
              :password   => "password"
end
