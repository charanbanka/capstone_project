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

5.times do |i|
    User.create(
        fullname:"Charan Banka #{i}",
        email:"charan#{i}@gmail.com",
        password:"123456",
        password_confirmation:"123456"
    )
   
end

new1 = Phase.create(title:"New")
onhold = Phase.create(title:"OnHold")
inprogress = Phase.create(title:"InProgress")
completed = Phase.create(title:"Completed")

#total 20 projects will be generated

User.all.each do |user|
    Phase.all.each do |phase|
        Project.create(
            title:"Project #{user.fullname} #{phase.title}",
            description:"Project #{user.fullname} #{phase.title}",
            status:phase.title,
            due_date:Date.new(2022,5,5),
            user:user,
            phase:phase
        )
    end
end






