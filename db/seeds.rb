# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#(1..10).each do |number|
#  Task.create(content: 'test_content_' + number.to_s, status: 'test_status_' + number.to_s)
#end

#Task.create(content: 'hoge', status: 'moge')   
#Task.create(content: 'hoge', status: 'moge')   

(1..10).each do |num| Task.create(content: 'task_' + num.to_s, status: 'stat_' + num.to_s) end
