# BASE_URL = 'https://api.spoonacular.com/recipes/1/information?apiKey=591b78136be1410bbf7ac50ef0ff1adc'
# ENV["API_KEY"]

# makes a get request to the API endpoint 
# response = RestClient.get("https://api.spoonacular.com/recipes/#{id}/information?auth=#{ENV["API_KEY"]}")
# recipe_array = JSON.parse(response) 

# binding.pry 

puts 'Clearing Database'

Recipe.destroy_all
Cookbook.destroy_all
RecipeBox.destroy_all
User.destroy_all

# OpeningNote.destroy_all

puts 'Database Cleared'

puts 'Creating users'
user1 = User.create(
                    first_name: "Julianne",
                    last_name: "Huynh",
                    email: "jh@gmail.com",
                    password:'123',
                    image: 'https://thumbs.gfycat.com/AstonishingDentalGermanspitz-size_restricted.gif',
                    # cookbook_id: c1.id
                    )
puts "Users Created"

puts "Creating Cookbook"
c1 = Cookbook.create!(
                    title: "Flatiron Eats",
                    author: "Adam Enbar",                    
                    cover_image: "https://coursereport-s3-production.global.ssl.fastly.net/uploads/school/logo/8/original/flatironschool.png",
                    user_id: user1.id,
                    # recipe_id: r1.id
                        )
puts "Cookbook created"

puts "Creating Recipe"

r1 = Recipe.create(
                name: "Pasta with Garlic, Scallions, Cauliflower & Breadcrumbs",
                image: "https://spoonacular.com/recipeImages/716429-556x370.jpg",
                cook_time: "45 Minutes",
                yield: "2",
                ingredients: "
                              1 TBSP Butter,
                              2 cups Frozen Cauliflower Florets,
                              2 Tbsps Cheese, 
                              1 Tbsp Extra Virgin Olive Oil, 
                              5 cloves Garlic,
                              6 oz Pasta, 
                              2 pinches Red Peper Flakes, 
                              2 Tbsps White Wine,
                              1/4 cups Whole White Bread Crumbs
                              3 green white scallions, 
                              salt & peper ",
                instructions:" 
                            In a large skillet, melt butter over medium heat until foamy. Then add bread crumbs, tossing to coat in butter, until toasted and lightly browned. Remove from pan into small bowl; mix in cheese and about a tablespoon of the green scallion tops. 

                            In the meantime, begin to prepare your pasta according to the directions on the package. While the pasta is cooking, put about a tablespoon of olive oil in the same pan you used for the bread crumbs. Over medium heat, add the garlic, whites of the scallions, and cauliflower to the skillet. Saute until the cauliflower shows some caramelization. Then add the wine until the florets are tender-crisp. Add salt, pepper, and red pepper flakes. 

                            When pasta is just shy of al dente, reserve about a cup of the cooking water and drain the pasta. Add the drained pasta to the skillet—still over medium heat—with the veggies and toss with some pasta water, as necessary (I added a little at a time; I ended up using about 1/2 cup), till the pasta is coated and turns easily. You may want to add another little drizzle of olive oil. Again, taste and season accordingly. Put into serving bowls and top with the bread crumb mixture. Sprinkle some more scallion greens on top. 

                            Put into serving bowls and top with the bread crumb mixture. Sprinkle some more scallion greens on top. 

                            That's it! There's cauliflower in every bite. And that's a great thing.
                            ",
                          cookbook_id: c1.id                                               
                          )

r2 = Recipe.create(
                name: "Toasted Pumpkin Seeds",
                image: "https://spoonacular.com/recipeImages/24326-556x370.jpg",
                cook_time: "36 Minutes",
                yield: "4",
                ingredients: "
                              1 Medium Pumpkin,
                              Salt,
                              Extra Virgin Olive Oil,",

                instructions:" 
                            Scrape out the pumpkin seeds:
                            Cut open the pumpkin by cutting a circle around the stem end with a sharp knife (knife blade angled in), and pulling off the top. 

                            Use a strong metal spoon to scrape the insides of the pumpkin and scoop out the seeds and strings. 

                            Place the mass of pumpkin seeds in a colander and run under water to rinse and separate the seeds from everything else.

                            Boil the pumpkin seeds in salted water for 10 minutes:
                            Measure the pumpkin seeds in a cup measure. Place the seeds in a medium saucepan. Add 2 cups of water and 1 tablespoon of salt to the pan for every 1/2 cup of pumpkin seeds. Add more salt if you would like your seeds to be saltier.

                            Bring the salted water and pumpkin seeds to a boil. Let simmer for 10 minutes. Remove from heat and drain. 

                            Bake the seeds in 400°F oven until browned:
                            Preheat the oven to 400°F. Coat the bottom of a roasting pan or thick baking sheet with olive oil, about a teaspoon or so.

                            Spread the seeds out over the roasting pan in a single layer, and toss them a bit to coat them with the oil on the pan.

                            Bake on the top rack until the seeds begin to brown, 5 to 20 minutes, depending on the size of the seeds.
                          ",
                          cookbook_id: c1.id
                          )

r3 = Recipe.create(
                name: "Savory Triple-corn Grits",
                image: "https://spoonacular.com/recipeImages/25822-556x370.jpg",
                cook_time: "45 Minutes",
                yield: "4-6",
                ingredients:" 
                            1/2 cup raw cashews
                            1 1/4 tsp. fine sea salt , divided, plus more for seasoning
                            2 large ears fresh sweet corn , kernels scraped
                            2 Tbsp. extra-virgin olive oil
                            1 large yellow onion , diced
                            1 tsp. ground cumin
                            2 cloves garlic , minced
                            1/2 cup cornmeal
                            1/2 cup stone-ground grits
                            Freshly ground white pepper,",
                instructions: "
                            Soak cashews in water overnight; drain. In a blender, combine cashews, 1/4 teaspoon salt, and 1/4 cup water; blend until smooth. Set aside.

                            Bring a small pot of salted water to a boil. Turn off heat, add corn kernels, and let sit for 1 minute. Drain and set aside.
                            
                            In a medium sauté pan over medium heat, warm the oil; add onion, cumin, and 1/2 teaspoon salt. Cook, stirring occasionally, until softened, about 7 minutes. Add garlic and cook until softened, about 2 minutes more. Set aside half of onion mixture in a small bowl. Add reserved corn to pan and cook for an additional 2 minutes. Set aside.
                            
                            In a bowl, mix cornmeal and grits well. In a medium saucepan, combine 3 cups water and 1/2 teaspoon salt and bring to a boil. Slowly whisk in cornmeal and grits until no lumps remain, return to a boil, then quickly reduce heat to low. Simmer, stirring occasionally to prevent grits from sticking to bottom of pan, until grits have absorbed most of the liquid and are thickening, about 3 minutes. Stir in 1 cup water and simmer 10 minutes more, stirring occasionally, until most of the liquid has been absorbed. Stir in creamed cashews and corn-onion mixture. Cover and simmer, stirring frequently, until grits are soft and fluffy, about 30 minutes.
                            
                            Season with salt and white pepper to taste. Garnish with onion mixture.",
                            cookbook_id: c1.id
                            )

r4 = Recipe.create(
                  name: "Spiced Stewed Zucchini",
                  image: "https://spoonacular.com/recipeImages/25569-556x370.jpeg",
                  cook_time: "20 Minutes",
                  yield: "4",
                  ingredients:" 
                              1 tablespoon extra virgin olive oil, 1 turn of the pan in a slow stream
                              2 cloves garlic, crushed
                              1/2 teaspoon crushed red pepper flakes
                              1 medium zucchini, thinly sliced
                              Coarse salt
                              1/2 teaspoon ground cumin, eyeball it
                              1 teaspoon chili powder, 1/3 palm full
                              1 can chick peas, 14 ounces, drained
                              1 can diced tomatoes in juice, 14 ounces
                              3 scallions, chopped
                              2 tablespoons cilantro leaves, a palm full, finely chopped",
                  instructions: "
                              Heat a skillet over moderate heat. Go 1 turn of the pan with a slow stream of extra-virgin olive oil. Add crushed garlic and red pepper flakes to the pan. Saute garlic and red pepper flakes 1 or 2 minutes. Add zucchini and season with salt, cumin and chili powder. Saute, stirring occasionally, about 3 minutes. Add chick peas, tomatoes and scallions to the pan and stir to combine. Cook over medium low heat for 10 minutes. Stir in cilantro and serve.

                              To reduce the heat level, omit the red pepper flakes from the recipe and method.",
                  cookbook_id: c1.id
                              )

r5= Recipe.create(
                name: "Cheeseburger Roulades",
                image: "https://spoonacular.com/recipeImages/72656-556x370.jpeg",
                cook_time: "1 hr 15 min",
                yield: "~35",
                ingredients:" 
                            Meat Mixture:
                            2 tablespoons grapeseed oil                
                            1/2 pound ground beef
                            1/2 pound ground pork
                            1 Roma tomato, diced
                            1 clove garlic, chopped
                            1 tablespoon chopped fresh parsley
                            Salt and freshly ground black pepper
                            
                            Roulade:                
                            Flour, for dusting                
                            2 sheets puff pastry, defrosted but kept chilled (see Chef's Note)                
                            4 egg yolks, whipped                
                            1/4 cup panko breadcrumbs                
                            1 cup grated Cheddar, divided                
                            2 tablespoons goat cheese, divided                
                            2 egg whites, whipped in a small bowl                
                            Salt and freshly ground black pepper                
                            1/4 cup grated Parmesan, divided

                            Sauce:                
                            1 small onion, finely chopped                
                            1 1/2 cups ketchup",
                instructions:"
                            Preheat the oven to 400 degrees F.
                            Heat a deep saute pan over medium heat. Add the oil and allow to heat. Add the beef and pork to the oil, stirring to cook until browned, 6 to 8 minutes. Then add the tomato, garlic, parsley, salt, and pepper, and reduce the heat to low and cook for additional 3 to 4 minutes. Remove from the heat. Carefully strain into a bowl. Transfer the meat mixture to a clean bowl. Allow the mixture to cool for 5 minutes. (Mixture must be cool before adding to the pastry.) While the mixture cools, roll out the puff pastry.

                            For the roulade: Sprinkle some flour on your counter or cutting board. Lay the sheet of pastry over the flour. With a rolling pin, roll the pastry out from the center, from the top to the bottom, and then out to the sides to make it a large rectangle, about 1 1/2 times the original size.

                            Stir the egg yolks and breadcrumbs into the cooled meat mixture, stirring in well.
                            Place half the cooled meat mixture onto the bottom third of the pastry sheet, keeping the bottom 2 inches empty. Top with half the Cheddar and goat cheeses and roll tightly. Using a pastry brush, brush the top of the pastry with a light coating of whisked egg whites. Sprinkle with salt, pepper, and half the Parmesan. Repeat with the second piece of pastry.

                            Place the roulades on a sheet pan covered with parchment. Bake in the oven until golden brown, 16 to 20 minutes. Remove from the oven and let rest for 5 minutes.
                            For the sauce: In a small bowl, stir the chopped onion and ketchup together.
                            To serve: Slice the roulades into thin rounds and serve warm with a dollop of sauce on each slice.
                            Chef's Notes
                            Keep the puff pastry in the fridge until you're ready to use it. If the pastry gets too warm and soft while you're rolling it out, just chill it for a minute before proceeding.
                            Make sure that the meat mixture is cooled before adding to the pastry.",
                cookbook_id: c1.id
                            )

r6= Recipe.create(
                 name: "Tomato Soup With Roasted Red Peppers",
                 image: "https://spoonacular.com/recipeImages/27309-556x370.jpg",
                 cook_time: "24 Minutes",
                 yield: "4",
                 ingredients:"
                              1 yellow onion (diced)
                              3 tablespoons olive oil
                              2 cloves garlic (minced)
                              ½ teaspoon kosher salt
                              56 ounces canned crushed tomatoes ((2 28-ounce cans) We use 2 quarts of our homegrown crushed frozen tomatoes.)
                              3 slow-roasted tomatoes in olive oil (+ 2 tablespoons of the seasoned olive oil)
                              2 whole roasted red peppers (canned or fresh, drain if using canned)
                              6 ounces canned tomato paste
                              1 cup vegetable broth (or chicken broth)
                              ¼ cup dry red wine (optional)
                              freshly ground black pepper (to taste)
                              gluten-free seasoned croutons",
                  instructions:"
                              In the large pot, sauté the onions in the olive oil until they start to glisten, about 3 to 4 minutes. Add the garlic and continue to sauté until it releases its fragrance, about 1 to 2 minutes.

                              Add the kosher salt, crushed tomatoes, slow roasted tomatoes, roasted peppers, tomato paste, and vegetable broth. Cover and bring up to a slow boil then reduce heat to a simmer. Continue cooking until the tomatoes and peppers are fully heated through, about 20 minutes. Stir in the red wine, if desired. Add more salt and black pepper to taste.

                              Use the immersion blender to puree the soup in the pot. If you do not have an immersion blender, you can puree the soup in a regular blender in 2 or 3 batches.

                              Serve hot with fresh ground black pepper and croutons sprinkled on top.
                              ",
                              cookbook_id: c1.id
                  
                              )
puts "Recipe Created"

# puts "Creating Opening Note"

# 10.times{OpeningNote.create( 
#                     image: image.sample,
#                     description: Faker::TvShows::NewGirl.quote
#                     )}
# puts "Opening Note Created"




puts "Done Seeding"