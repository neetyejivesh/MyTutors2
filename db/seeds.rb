# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Course.destroy_all
User.destroy_all

john = User.create(first_name: "neetye" ,
last_name: "jivesh",
email:"neetyejivesh24@gmail.com",
password: "123456789")
john.save


maths1 = Course.create(title:"Mathematics Grade 3", description:" Mathematics Courses and tutorials suitable for grad", 
photo_url:"https://images.unsplash.com/photo-1518133910546-b6c2fb7d79e3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=435&q=80", 
duration:"30 minutes",
price: 100 )
maths1.user = john
maths1.save!

# Course.create( title: "French Grade 3", description:" French Courses and tutorials suitable for grade 3 students", 
# photo_url:"https://images.unsplash.com/photo-1558443957-d056622df610?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80", 
# duration:"30 minutes") 

# Course.create( title: "Cookery Grade 3", description:" Cookery Courses and tutorials suitable for grade 3 students", 
# photo_url:"https://images.unsplash.com/photo-1607877742574-a483ae272995?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=375&q=80", 
# duration:"30 minutes") 

# Course.create( title: "Computer Science Grade 3", description:" Computer Science Courses and tutorials suitable for grade 3 students", 
# photo_url:"https://images.unsplash.com/photo-1603354350317-6f7aaa5911c5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80",
# duration:"30 minutes") 

