  # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Answer.destroy_all
Question.destroy_all
Blood_sugar.destroy_all
Glycemic_index.destroy_all
Medication.destroy_all
User.destroy_all

a1 = Job.create!(company_name: '1-Stop Connections' , location: 'Sydney', description: '', salary: 80000, role: "Junior Front End Developer",  applicants: 0, user_id: u3.id )
