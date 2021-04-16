# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts '1. Cleaning database...'

Task.delete_all
ChecklistTask.delete_all
Checklist.delete_all
List.delete_all
Table.delete_all
User.delete_all

puts 'Done!'
puts '-----------------'
puts '2. Creating users...'

User.create!(username: 'javier',
            first_name: 'Javier',
            last_name: 'Cuadrado',
            email: 'javier@tata.com',
            password: 'javier@tata.com')

User.create!(username: 'annelaure',
            first_name: 'Anne-Laure',
            last_name: 'Tulet',
            email: 'annelaure@tata.com',
            password: 'annelaure@tata.com')

puts 'Done!'
puts '-----------------'
puts '3. Creating database...'

4.times do
  table = Table.create!(title: Faker::DcComics.hero,
                user_id: User.first.id)
  4.times do
    list = List.create!(title: Faker::Job.field,
                        table_id: table.id)
    5.times do
      task = Task.create!(title: Faker::Lorem.sentence,
                          description: Faker::Lorem.paragraphs,
                          list_id: list.id,
                          done: [true, false].sample,
                          start_at: Date.today,
                          end_at: (Date.today...(Date.today + 300)).to_a.sample)
    end
    checklist = Checklist.create!(list_id: list.id)
    4.times do
      ChecklistTask.create!(title: Faker::Lorem.sentence,
                            done: [true, false].sample,
                            checklist_id: checklist.id)
    end
  end
end

puts 'Done!'
puts '-----------------'
puts 'Finished!'
