
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

