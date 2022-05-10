# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


SubTask.delete_all
Comment.delete_all
Attachment.delete_all
Task.delete_all
Project.delete_all
User.delete_all
Phase.delete_all

#first user
User.create(
        fullname:"Charan Banka",
        email:"charan@gmail.com",
        password:"123456",
        password_confirmation:"123456"
 )

 #second user
 User.create(
    fullname:"Chandra Agarwala",
    email:"chandra@gmail.com",
    password:"123456",
    password_confirmation:"123456"
)

User.create(
    fullname:"Rajesh Pillai",
    email:"rajesh@gmail.com",
    password:"123456",
    password_confirmation:"123456"
)

User.create(
    fullname:"Amit Kumar",
    email:"amit@gmail.com",
    password:"123456",
    password_confirmation:"123456"
)

User.create(
    fullname:"Vaibhav Agarwal",
    email:"vaibhav@gmail.com",
    password:"123456",
    password_confirmation:"123456"
)

Phase.create(title:"New")
Phase.create(title:"OnHold")
Phase.create(title:"InProgress")
Phase.create(title:"Completed")

# #total 20 projects will be generated

User.all.each do |user|
    Phase.all.each do |phase|
        Project.create(
            title:"Project #{user.fullname}",
            description:"Project #{user.fullname} #{phase.title}",
            status:phase.title,
            due_date:Date.new(2022,5,16),
            user:user,
            phase:phase
        )
    end
end






