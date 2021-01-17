# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: 'Olga', password: 'password')
User.create(name: 'Eustace', password: 'password')
User.create(name: 'Muriel', password: 'password')
User.create(name: 'Chuck', password: 'password')
Message.create(body: 'Some first message', user_id: 1)
Message.create(body: 'Second message', user_id: 2)
Message.create(body: 'Muriel first message', user_id: 3)
Message.create(body: 'Norris fourth message', user_id: 4)
