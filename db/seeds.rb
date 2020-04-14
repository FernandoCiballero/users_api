10.times do |n|
  name  = Faker::Name.name
  email = "#{name.gsub(/[^a-zA-Z]+/, "").strip.downcase}@example.com"
  
  User.create!(name:  name, email: email)
end