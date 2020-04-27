# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.destroy_all

30.times do |i|
  Event.create(
    date: "#{i + 1}-04-2020",
    time: "6.00",
    title: "Tech Courses",
    user: "Francesco Ecclesie",
    user_link: "https://www.linkedin.com/in/francesco-ecclesie/?originalSubdomain=it",
    topic: "Javascript for beginners",
    label: "new",
    event_link: "https://www.eventbrite.it/e/webinar-get-started-with-javascript-tickets-103423211610",
    language: ["EN", "IT"].sample,
  )
end
