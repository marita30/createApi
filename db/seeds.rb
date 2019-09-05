role = Role.create([{ name_roles: 'admin'}, { name_roles: 'user'}])
#create un usuario que es administrador por default , y que tiene que estar authenticate
user = User.create ({email: "mj@gmail.com", password: "3012", role_id: 1})


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
