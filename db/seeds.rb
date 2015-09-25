# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Article.create(title: "Test 1", author: "author 1", image:"", year: "2012", make: "BMW", model: "328i", region: "European", body: "text input", votes: "1")
Article.create(title: "Test 2", author: "author 2", image:"", year: "2012", make: "BMW", model: "328i", region: "European", body: "text input", votes: "2")
Article.create(title: "Test 3", author: "author 3", image:"", year: "2012", make: "BMW", model: "328i", region: "American", body: "text input", votes: "3")
Article.create(title: "Test 4", author: "author 4", image:"", year: "2013", make: "BMW", model: "328i", region: "American", body: "text input", votes: "1")
Article.create(title: "Test 5", author: "author 5", image:"", year: "2014", make: "BMW", model: "328i", region: "Japanese", body: "text input", votes: "10")
Article.create(title: "Test 6", author: "author 6", image:"", year: "2015", make: "BMW", model: "328i", region: "Japanese", body: "text input", votes: "9")