

Answer.destroy_all
Question.destroy_all
BloodSugar.destroy_all
GlycemicIndex.destroy_all
Medication.destroy_all
User.destroy_all

# 0 is admin, 1 is doctor, 2 is patient

u1 = User.create!(first_name: 'Kevin', last_name: 'Osborn',  email: 'kevinosborn31@gmail.com', user_type: 0, admin: true, password: 'chicken' )

u2 = User.create!(first_name: 'Ram', last_name: 'Taheri', phone: 483910295, email: 'ram@gmail.com', location: 'Wollongong', specialization: 'Endocrinologist', user_type: 1, admin: false, password: 'chicken' )

u3 = User.create!(first_name: 'Luke', last_name: 'Hammer', medicare: 1039394839, ndss: 99483728392, phone: 499302958, email: 'lukehammer@gmail.com', location: 'Wollongong', user_type: 2, admin: false, password: 'chicken' )

u4 = User.create!(first_name: 'Jude', last_name: 'Osborn', medicare: 8593848573, ndss: 23748392934, phone: 424859481, email: 'judeosborn@gmail.com', location: 'Castle Hill', user_type: 2, admin: false, password: 'chicken' )


b1 = BloodSugar.create!( user_id: u2.id, level: 5.2 )

b2 = BloodSugar.create!( user_id: u2.id, level: 5.1)

b3 = BloodSugar.create!( user_id: u2.id, level: 2.1)

b4 = BloodSugar.create!( user_id: u2.id, level: 11.5 )



b5 = BloodSugar.create!( user_id: u3.id, level: 6.2)

b6 = BloodSugar.create!( user_id: u3.id, level: 8.0)

b7 = BloodSugar.create!( user_id: u3.id, level: 9.1)

b8 = BloodSugar.create!( user_id: u3.id, level: 10.9)



g1 = GlycemicIndex.create!(food: 'Potato', gi: 78)

g2 = GlycemicIndex.create!(food: 'Pumpkin', gi: 64)

g3 = GlycemicIndex.create!(food: 'Milk', gi: 39)

g4 = GlycemicIndex.create!(food: 'Bread', gi: 75)


m1 = Medication.create!( name: 'Lantus', dosage: 28, instructions: 'Take every night before bed' )

m2 = Medication.create!( name: 'Nova Rapid', dosage: 1, instructions: 'Take at a ratio of 1:10 carbs' )

m3 = Medication.create!( name: 'Apidra', dosage: 10, instructions: 'Take with every meal' )

m4 = Medication.create!( name: 'Acarbose', dosage: 2, instructions: 'Take with a meal' )


q1 = Question.create!( user_id: u3.id, qustion_text: 'Etiam orci magna, pharetra vitae commodo vel, feugiat eget nunc.
')

q2 = Question.create!(user_id: u3.id, qustion_text: 'Donec erat ligula, lobortis eu malesuada non, bibendum eget est.
')

q3 = Question.create!(user_id: u3.id, qustion_text: 'Nullam at cursus tortor. Phasellus in aliquam felis. Sed at.
')

q4 = Question.create!(user_id: u4.id, qustion_text: 'Pellentesque nec pharetra purus, vel consectetur tellus. Maecenas elementum eget.
')

q5 = Question.create!(user_id: u4.id, qustion_text: 'Curabitur accumsan eu dui maximus condimentum. Nulla eu consectetur odio.
')



a1 = Answer.create!( question_id: q1.id, user_id: u2.id, answer_text: '
Lorem ipsum dolor sit amet, consectetur adipiscing elit. In lacinia augue sagittis ipsum viverra, et.')

a2 = Answer.create!( question_id: q2.id, user_id: u2.id, answer_text: '
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam fringilla elementum sapien a lacinia. Aenean.
')

a3 = Answer.create!( question_id: q3.id, user_id: u2.id, answer_text: '
  Ut vitae dictum tellus, et suscipit sem. Praesent non porttitor quam. Donec id semper mauris.
')

a4 = Answer.create!( question_id: q4.id, user_id: u2.id, answer_text: '
  In elementum felis non tincidunt iaculis. Maecenas tincidunt, tortor eu efficitur bibendum, elit odio auctor.
')
