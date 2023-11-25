# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create!(
    name: "user1",
    email: "test@test1",
    password: "123456",
    )
community = Community.create!(
    content: "hello",
    user: user,
    )
my_pr = MyPr.create!(
    pr_title: "test_title",
    pr_explanation: "test_explanation_text",
    pr_movie: "s3://mypr-test-video/mypr_test_video/117041.mov",
    user: user,
    )