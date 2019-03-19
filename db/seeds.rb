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
    {email:"supadmin@railstest.com", password:"supadmin", role_id: 1},
    {email:"admin@railstest.com", password:"admin123", role_id: 2},
    {email:"user@railstest.com", password:"user123", role_id: 3}
  ]
)

mainmenus = Mainmenu.create(
  [
    {name: "menuadmin", display_name: "Menu Admin", access_lvl: "1"},
    {name: "useradmin", display_name: "User Admin", access_lvl: "1,2"},
    {name: "adminonly", display_name: "Admin Only", access_lvl: "2"},
    {name: "regularmenu", display_name: "Regular Menu", access_lvl: "1,2,3"},
    {name: "userprivate", display_name: "User Private", access_lvl: "3"},
    {name: "superadminuser", display_name: "Superadmin and User", access_lvl: "1,3"},
  ]
)
