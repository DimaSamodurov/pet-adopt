# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Pet.delete_all
News.delete_all
User.delete_all

FactoryGirl.create_list :pet, 60
FactoryGirl.create_list :news, 10
user = User.create!(name: 'Test User',
             email: 'test@zoo.net',
             password: 'test1234')
