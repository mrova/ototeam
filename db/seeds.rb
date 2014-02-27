# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def time_rand from = 0.0, to = Time.now
  Time.at(from + rand * (to.to_f - from.to_f))
end

5.times do |i|
  Friend.create(name: "Imie ##{i}", email: "email##{i}@gmail.com", phone: "telefon ##{i}")
end

5.times do |i|
  Group.create(name: "Nazwa ##{i}")
end

5.times do |i|
  Event.create(name: "Nazwa ##{i}", description: "opis ##{i}", dt: time_rand)
end