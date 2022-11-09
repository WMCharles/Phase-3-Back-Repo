puts "Deleting old data..."
Job.destroy_all
Category.destroy_all
Tag.destroy_all

job1 = Job.create(
    image: "https://images.unsplash.com/photo-1610563166150-b34df4f3bcd6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c29mdHdhcmUlMjBkZXZlbG9wbWVudHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60", 
    title: "Front-End Developer", 
    location: "Nairobi",
     deadline: "2022/11/12", 
     requirements:"Bachelor's Degree", 
     description:"Eloquent in JavaScript && Python", 
     salary: 40000
)

job2 = Job.create(
    image: "https://images.unsplash.com/photo-1610563166150-b34df4f3bcd6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c29mdHdhcmUlMjBkZXZlbG9wbWVudHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60", 
    title: "Software Developer", 
    location: "Nairobi",
    deadline: "2022/11/12", 
    requirements:"Bachelor's Degree", 
    description:"Eloquent in JavaScript && Python", 
    salary: 40000
)

cat1 = Category.create(name: "Front-End", description:"UI Developer")
cat2 = Category.create(name: "API Developer", description:"Backend Developer")



Tag.create(name:"React", job_id: job1.id, category_id: cat1.id)
Tag.create(name:"Django", job_id: job2.id, category_id: cat2.id)

puts "Done Seeding!"