# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Poll.destroy_all
Question.destroy_all
AnswerChoice.destroy_all
Response.destroy_all


u1 = User.create!(username: "Alistair")
u2 = User.create!(username: "Si")
u3 = User.create!(username: "Mané")
u4 = User.create!(username: "Chris Hemsworth")

poll = Poll.create!(title: "Food", author: u4)

q1 = Question.create!(text: "What''s your fave food?", poll: poll)

a1 = AnswerChoice.create!(text: "Pizza", question: q1)
a2 = AnswerChoice.create!(text: "Schnizel", question: q1)
a3 = AnswerChoice.create!(text: "Pasta", question: q1)
a4 = AnswerChoice.create!(text: "Sushi", question: q1)

r1 = Response.create!(respondent:u1, answer_choice: a2)
r2 = Response.create!(respondent:u2, answer_choice: a4)
r3 = Response.create!(respondent:u3, answer_choice: a4)


