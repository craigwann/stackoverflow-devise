# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Question.destroy_all
Answer.destroy_all
User.destroy_all

10.times do |index|
  User.create!(email: Faker::Name.name,
    password: Faker::Lorem.characters(10)
    # avatar_file_name: ("50x60"),
    # avatar_content_type: ("50x60"),
    # avatar_file_size: ("50x60"),
    )
end

30.times do |index|
  Question.create!(title: Faker::Name.name,
    body: Faker::Lorem.sentence(15),
    user_id: Faker::Number.between(1, 5),
    avatar: Faker::LoremFlickr.image("50x60"),
    score: Faker::Number.between(1, 5))
end

Question.all.each do |question|
    20.times do |index|
      question.answers.create!(response: Faker::Lorem.sentence(5),
      user_id: Faker::Number.between(1, 5),
      vote: Faker::Number.between(1, 5),
      question_id: Product.all.shuffle[0].id)
  end
end


p "Created #{Question.count} questions"
p "Created #{Answer.count} answers"
