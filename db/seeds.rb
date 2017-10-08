@user = User.create(email: 'test@test.com', password: 'hogehoge', password_confirmation: 'hogehoge', first_name: 'John', last_name: 'Snow')

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "100 Posts have been created"
