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


maths1 = Course.create(title:"Mathematics O-level", description:"MyTutors O Level Mathematics Course provides a complete course for developing and practising the skills required for the O Level Mathematics qualification. The content has been written to offer a range of tasks that support all aspects of the Cambridge O Level Mathematics syllabus (4024) giving students the confidence to use the mathematical techniques required to solve the range of maths problems required. With detailed explanations of concepts, worked examples and exercises, this coursebook can be used as a classroom text and for self-study.", 
photo_url:"https://images.unsplash.com/photo-1518133910546-b6c2fb7d79e3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=435&q=80", 
duration:"30 minutes",
price: 100 )
maths1.user = john
maths1.save!

maths2 = Course.create( title: "Biology O-level", description:"MyTutors O Level Biology course helps learners to understand the biological world in which they live and take an informed interest in science and scientific developments. The syllabus includes the basic principles and concepts that are fundamental to the subject, some current applications of biology, and a strong emphasis on practical skills.
Learners also develop an understanding of the scientific skills essential for progression to Cambridge International AS & A Level, further education or a career related to science.", photo_url:"https://images.unsplash.com/photo-1576086213369-97a306d36557?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YmlvbG9neXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
duration:"60 minutes",
price: 100 )
maths2.user = john
maths2.save!

maths3 = Course.create( title: "Physics O-level", description:"MyTutors O Level Physics helps learners to understand the technological world in which they live, and take an informed interest in science and scientific developments. The syllabus includes the basic principles and concepts that are fundamental to the subject, some current applications of physics, and a strong emphasis on practical skills. 
Learners also develop an understanding of the scientific skills essential for progression to Cambridge International AS & A Level, further education or a career related to science.", photo_url:"https://images.unsplash.com/photo-1492962827063-e5ea0d8c01f5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGh5c2ljc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
duration:"90 minutes",
price: 100 )
maths3.user = john
maths3.save!

maths4 = Course.create( title: "Hospitality,Travel and Tourism A-level", description:"MyTutors O Level Travel and Tourism is designed to help meet the need for skilled and knowledgeable individuals in this rapidly diversifying industry.
The syllabus:
1) provides an understanding of the nature of travel and tourism globally, nationally and locally
2)develops the concepts, models and theories used within the industry
3)highlights the importance of sustainability, resilience, the customer, destinations and marketing in travel and tourism
4)enhances learners' analysis, interpretation and evaluation skills.", photo_url:"https://images.unsplash.com/photo-1523906834658-6e24ef2386f9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8dHJhdmVsJTIwYW5kJTIwdG91cmlzbXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", 
duration:"120 minutes",
price: 100 ) 
maths4.user = john
maths4.save!

french1 = Course.create( title: "French O-level", description:"MyTutors International O Level French builds on the language skills gained at Cambridge IGCSE, Cambridge O Level or Cambridge International AS Level, and is the ideal foundation for university-level study, or to improve career prospects. 
Learners will gain an understanding of how to use the language in a variety of situations. They will be expected to handle texts and other source materials, extracting information in order to respond to specific tasks. Through their studies, learners can expect to achieve greater fluency, accuracy and confidence in the language.", 
photo_url:"https://images.unsplash.com/photo-1505902987837-9e40ec37e607?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZnJlbmNofGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", 
duration:"30 minutes",
price: 100 )
french1.user = john
french1.save!

french2 = Course.create( title: "Modern Music", description:" Musical training helps develop language and reasoning: Students who have early musical training will develop the areas of the brain related to language and reasoning. The left side of the brain is better developed with music, and songs can help imprint information on young minds. Therefore, MyTutors provides our students music courses as well to help balance their learning process.", photo_url:"https://images.unsplash.com/photo-1511379938547-c1f69419868d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fG11c2ljfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", 
duration:"60 minutes",
price: 100 )
french2.user = john
french2.save!

french3 = Course.create( title: "HTML", description:"HTML is the foundation of all web pages. Without HTML, you wouldn’t be able to organize text or add images or videos to your web pages. HTML is the beginning of everything you need to know to create engaging web pages! You will learn all the common HTML tags used to structure HTML pages, the skeleton of all websites. You will also be able to create HTML tables to present tabular data efficiently.", photo_url:"https://images.unsplash.com/photo-1542831371-29b0f74f9713?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aHRtbHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
duration:"90 minutes",
price: 100 ) 
french3.user = john
french3.save!

french4 = Course.create( title: "Javascript", description:"JavaScript is among the most powerful and flexible programming languages of the web. It powers the dynamic behavior on most websites, including this one.You will learn programming fundamentals and basic object-oriented concepts using the latest JavaScript syntax. The concepts covered in these lessons lay the foundation for using JavaScript in any environment.", photo_url:"https://images.unsplash.com/photo-1576836165612-8bc9b07e7778?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8amF2YXNjcmlwdHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", 
duration:"120 minutes",
price: 100 ) 
french4.user = john
french4.save!

cookery1 = Course.create( title: "Cookery", description:"Cooking is an essential life skill that can be learnt any stage in life. Whether your just embarking on cooking for yourself or a young adult transforming into a budding chef, we’ll teach you how to cook with confidence. The class is entirely hands on and taught in small groups, so you develop and practice with guidance from our expert chefs and produce your own meals that you can share with your family and friends.", photo_url:"https://images.unsplash.com/photo-1607877742574-a483ae272995?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=375&q=80",
duration:"30 minutes",
price: 100 ) 
cookery1.user = john
cookery1.save!

cookery2 = Course.create( title: "Cookery Garde 6", description:"Cookery Courses and tutorials suitable for grade 6 students", photo_url:"https://images.unsplash.com/photo-1610558269197-70cfbad7c556?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=435&q=80",
duration:"60 minutes",
price: 100 ) 
cookery2.user = john
cookery2.save!

cookery3 = Course.create( title: "Cookery Grade 9", description:"Cookery Courses and tutorials suitable for grade 9 students", photo_url:"https://images.unsplash.com/photo-1605433246995-23f532d1e001?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
duration:"90 minutes",
price: 100 ) 
cookery3.user = john
cookery3.save!

cookery4 = Course.create( title: "Cookery Grade 12", description:"Cookery Courses and tutorials suitable for grade 12 students", photo_url:"https://images.unsplash.com/photo-1556910103-1c02745aae4d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80",
duration:"120 minutes",
price: 100 ) 
cookery4.user = john
cookery4.save!

computer_science1 = Course.create( title: "Computer Science Grade 3", description:" Computer Science Courses and tutorials suitable for grade 3 students", photo_url:"https://images.unsplash.com/photo-1603354350317-6f7aaa5911c5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80",
duration:"30 minutes",
price: 100 ) 
computer_science1.user = john 
computer_science1.save!

computer_science2 = Course.create( title: "Computer Science Garde 6", description:"Computer Science Courses and tutorials suitable for grade 6 students", photo_url:"https://images.unsplash.com/photo-1599666520394-50d845fe09c6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80",
duration:"60 minutes",
price: 100 )
computer_science2.user = john 
computer_science2.save!

computer_science3 = Course.create( title: "Computer Science Grade 9", description:"Computer Science Courses and tutorials suitable for grade 9 students", photo_url:"https://images.unsplash.com/photo-1536148935331-408321065b18?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80",
duration:"90 minutes",
price: 100 ) 
computer_science3.user = john 
computer_science3.save!

computer_science4 = Course.create( title: "Computer Science Grade 12", description:"Computer Science Courses and tutorials suitable for grade 12 students", photo_url:"https://images.unsplash.com/photo-1529101091764-c3526daf38fe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1333&q=80",
duration:"120 minutes",
price: 100 )
computer_science4.user = john 
computer_science4.save!
