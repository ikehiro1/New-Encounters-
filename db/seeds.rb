# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
    name: "test_user1",
    email: "test@test1",
    password: "123456",
    telephone_number: "1234567890",
    role: 0,
    birthday: "2000-01-01",
    history: "サンプルテキストです",
    )
User.create!(
    name: "test_user2",
    email: "test@test2",
    password: "123456",
    telephone_number: "0987654321",
    role: 1,
    birthday: "2000-01-01",
    history: "test_user2サンプルテキストです",
    )
User.create!(
    name: "test_user3",
    email: "test@test3",
    password: "123456",
    telephone_number: "5432109876",
    role: 2,
    birthday: "2000-01-01",
    history: "test_user3サンプルテキストです",
    )
User.create!(
    name: "test_user4",
    email: "test@test4",
    password: "123456",
    telephone_number: "6789012345",
    role: 3,
    birthday: "2000-01-01",
    history: "test_user4サンプルテキストです",
    )

