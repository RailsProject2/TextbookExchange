# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Make some Books
BuyPost.create name: 'HFJ', isbn: '123456', class_name: 'CS61B', class_number: '61B', user_id: '12', price:'100'
BuyPost.create name: 'CHEM', isbn: '122343', class_name: 'Chem1B', class_number: '1B', user_id: '12', price:'200'
