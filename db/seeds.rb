User.create!([
  {fname: "Darren", lname: "Ellis", email: "darrenellis77@gmail.com", encrypted_password: "$2a$11$Dn7bLbWmr1b9A7dMwRLX/OM5nyk1KbLZVzlYoWvsd/yOajTbKxrzC", reset_password_token: "58c0339027e1a833bc4393f199805cf946ee0465c80fedafd3df9c0dcceedbf2", reset_password_sent_at: "2017-02-23 03:16:05", remember_created_at: nil, sign_in_count: 24, current_sign_in_at: "2017-03-10 21:05:50", last_sign_in_at: "2017-03-10 20:58:25", current_sign_in_ip: "72.208.242.174", last_sign_in_ip: "72.208.242.174", confirmation_token: nil, confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil},
  {fname: "Michael", lname: "Jordan", email: "michael@jordan.com", encrypted_password: "$2a$11$/WrbIASC7y0Bc8v6Fp7G1etreuexHz0QK4e5/eT1OmrHoSqKK6mym", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2017-03-10 05:51:05", last_sign_in_at: "2017-02-24 22:06:48", current_sign_in_ip: "70.190.0.179", last_sign_in_ip: "209.147.144.17", confirmation_token: nil, confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil},
  {fname: "Bill", lname: "Gates", email: "bill@gates.com", encrypted_password: "$2a$11$kp/M9Sks7qdgmqL.edjS8u9a.wmo4bWNZUYO8dYnPFcv2.cQ7StU6", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-02-24 22:07:23", last_sign_in_at: "2017-02-24 22:07:23", current_sign_in_ip: "209.147.144.17", last_sign_in_ip: "209.147.144.17", confirmation_token: nil, confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil},
  {fname: "Steve", lname: "Wozniak", email: "steve@apple.com", encrypted_password: "$2a$11$qRs0c4s6dfBAc0dvTsOcUOR35j8BUPTDPe/KEKFf5uiN0HisQOGZW", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-02-24 22:07:51", last_sign_in_at: "2017-02-24 22:07:51", current_sign_in_ip: "209.147.144.17", last_sign_in_ip: "209.147.144.17", confirmation_token: nil, confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil},
  {fname: "Ken", lname: "Thompson", email: "ken@thompson.com", encrypted_password: "$2a$11$yRycalRFeG1mNQHOzSeO4uL77smcdDMIp/o3L0z.jI9NecHj784B.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-02-24 22:08:23", last_sign_in_at: "2017-02-24 22:08:23", current_sign_in_ip: "209.147.144.17", last_sign_in_ip: "209.147.144.17", confirmation_token: nil, confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil}
])
UsersHasIngredient.create!([
  {ingredient_id: 3, user_id: 1},
  {ingredient_id: 7, user_id: 1},
  {ingredient_id: 6, user_id: 1}
])
Ingredient.create!([
  {name: "Cheese", description: "Dairy", image: "cheese.png"},
  {name: "Butter", description: "Dairy", image: "butter.png"},
  {name: "Bread", description: "Whole Grain", image: "bread.png"},
  {name: "Chicken Breast", description: "Poultry", image: "chicken-icon.png"},
  {name: "Milk", description: "Dairy", image: "milk-icon.png"},
  {name: "Basil", description: "Herb", image: "basil-icon.png"},
  {name: "Tomato", description: "Vegetable", image: "tomato-icon.png"},
  {name: "Beer", description: "Alcohol", image: "beer-icon.png"},
  {name: "Ham", description: "Pork", image: "ham.png"},
  {name: "Beef", description: "Sirloin", image: "beef.png"},
  {name: "Spinach", description: "Vegetable", image: "spinach.png"},
  {name: "Onion", description: "Vegetable", image: "onion.png"}
])
Post.create!([
  {title: "Test Fav", body: "Favorites", user_id: 1},
  {title: "Test2", body: "Test2", user_id: 1}
])
Recipe.create!([
  {name: "Chicken Marsala", description: "Italian", image: "", videourl: "https://www.youtube.com/embed/OGWnnVnVHrU", instructions: "Saute in pan, add mushrooms and cook for 15 minutes.", preptime: "10", cooktime: "15"},
  {name: "Mac & Cheese", description: "Classic Macaroni & Cheese", image: "", videourl: "https://www.youtube.com/embed/XsALTvYUTI8", instructions: "Follow directions on box", preptime: "5", cooktime: "10"},
  {name: "Shrimp Scampi", description: "Seafood", image: "", videourl: "https://www.youtube.com/embed/qCeceTrpwTk", instructions: "Cook pasta. Add shrimp and saute until done.", preptime: "15", cooktime: "10"},
  {name: "Ramen Surprise", description: "Fast & Easy. Plus it's delicious!", image: "", videourl: "https://www.youtube.com/embed/EizSoy7Ztto", instructions: "Follow directions on box", preptime: "5", cooktime: "8"},
  {name: "Rosemary Pork Tenderloin", description: "Easy and even the kids will like it!", image: "", videourl: "https://www.youtube.com/embed/flmknPrnBqM", instructions: "Cook pork until done, then serve", preptime: "20", cooktime: "12"},
  {name: "Ice Cream", description: "Dairy", image: "", videourl: "https://www.youtube.com/embed/UV44apOzy1Y", instructions: "Don't put in oven!", preptime: "15", cooktime: "10"},
  {name: "Fettuccini Alfredo", description: "Italian", image: "", videourl: "https://www.youtube.com/embed/C9Jx91A7CzI", instructions: "Cook pasta until done. Add ingredients and heat over low.", preptime: "12", cooktime: "15"},
  {name: "Churros", description: "Dessert", image: "", videourl: "https://www.youtube.com/embed/coXSTY6FOF0", instructions: "Fry em' till they're done!", preptime: "5", cooktime: "8"}
])
UsersHasRecipe.create!([
  {user_id: 1, recipe_id: 1},
  {user_id: 1, recipe_id: 4},
  {user_id: 1, recipe_id: 7},
  {user_id: 3, recipe_id: 6},
  {user_id: 4, recipe_id: 2},
  {user_id: 5, recipe_id: 8},
  {user_id: 5, recipe_id: 6},
  {user_id: 1, recipe_id: 6},
  {user_id: 3, recipe_id: 6},
  {user_id: 1, recipe_id: 3},
  {user_id: 3, recipe_id: 3},
  {user_id: 4, recipe_id: 4},
  {user_id: 1, recipe_id: 5},
  {user_id: 2, recipe_id: 5},
  {user_id: 3, recipe_id: 5},
  {user_id: 4, recipe_id: 5}
])
