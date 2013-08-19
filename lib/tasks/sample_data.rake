namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "ciholy",
                 email: "ciholy@yahoo.com",
                 password: "CI!@#92",
                 password_confirmation: "CI!@#92",
                 admin: true)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end