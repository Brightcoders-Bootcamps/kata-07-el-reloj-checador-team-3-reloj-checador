# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Employee.create(name: 'Karina Delgado', email: 'karina@hotmail.com', position: 'QA', private_number: 123, status: 'active')
Employee.create(name: 'Daniela Sotomayor', email: 'dany@hotmail.com', position: 'Developer', private_number: 321, status: 'active')
Admin.create(user: 'Karina', password_digest: '123')
Branch.create(name: 'HR', address: '3rd Floor')
Report.create(check_type: "check in", check_time: "2016-11-01 17:00:13", employee_id: "1")