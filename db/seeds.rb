# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
roles = Role.create(
  [
   {role_id: 1, role_name: "superadmin"},
   {role_id: 2, role_name: "admin"},
   {role_id: 3, role_name: "user"}
  ]
)

users = User.create(
  [
    {email:"supadmin@railstest.com", password:"supadmin", role_id: 1}
  ]
)
