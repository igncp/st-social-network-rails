
number_of_users = 200

# Creates a dummy user:

User.create!({
    email: 'a@a.a', password: '12345678', password_confirmation: '12345678', user_name: 'dummy',
    name: 'Dummy', age: '100', gender: 'M', location: 'Madrid, Spain', bio: Faker::Lorem.paragraph(4)
})

# Creates number_of_users additional users

users = []
(number_of_users - 1).times do |i|
    password = Faker::Lorem.characters(10)
    users.push({
        email: Faker::Internet.email, password: password, password_confirmation: password, user_name: Faker::Lorem.characters(5),
        name: Faker::Name.name, age: Faker::Number.number(2), gender: ['M', 'F'].sample, 
        location: Faker::Address.city + ', ' + Faker::Address.country, bio: Faker::Lorem.paragraph(4)
    })
end

User.create!(users)


# Creates 1000 messages

messages = []
1000.times do |i|
    destination = rand(number_of_users + 1)
    user_id = destination
    
    while user_id == destination
        user_id = rand(number_of_users + 1)
    end

    messages.push({
        user_id: user_id, destination_id: destination, parent_id: 0, content: Faker::Lorem.paragraph(rand(9) + 1)
    })
end

Message.create!(messages)