puts 'Clearing Database'

Cookbook.destroy_all
Recipe_box.destroy_all
User.destroy_all
Recipe.destroy_all
Opening_note.destroy_all

puts 'Database Cleared'

puts 'Creating users'

10.times{User.create( 
                    email: Faker::Internet.email,
                    password:'Password!123',
                    first_name: Faker::Name.first_name,
                    last_name: Faker::Name.last_name,
                    )}

puts "Users Created"

puts "Creating Recipe"

10.times{Recipe.create(
  name: "title",
  image: "image",
  cook_time: "readyInMinutes",
  yield: "servings",
  ingredients: "ingredients",
  instructions: "instrictions"
)}

puts "Recipe Created"

puts "Creating Opening Note"

image = ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4D-4iHVo07vwIcEXB0MYTdx2Qy4krYvBdAA&usqp=CAU", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpFYftCroTMbMWmnyLgPnFKVg2MNW_Rt7yUA&usqp=CAU", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSapy8JBv3Xm9S7ky2aSq8VRc56ja0nz3wDiA&usqp=CAU", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRE8eihqP70waKITdUb8tolLTD0toNBe_utlQ&usqp=CAU", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBJxV5RXndEXgGALlx5tAVrmsubNrZZBCKCw&usqp=CAU"]

10.times{Opening_note.create( 
                    image: image.sample,
                    description: Faker::TvShows::NewGirl.quote
                    )}

puts "Opening Note Created"

puts "Creating Cookbook"

10.times{Cookbook.create{
                          title: Faker::Restaurant.name
                          author: Faker::TvShows::BigBangTheory.character
                          cover_image: image.sample
                          user_id :rand(1..10),
                        }}

puts "Cookbook created"

puts "Creating Recipe box"

10.times{Recipe_box.create{
                          title: Faker::Restaurant.name
                          author: Faker::TvShows::BigBangTheory.character
                          cover_image: image.sample
                          user_id :rand(1..10),
                          }}

puts "Recipe Box created"


puts "Done Seeding"