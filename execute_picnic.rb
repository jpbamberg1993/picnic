require "./refactor_test_1.rb"

@food_needed = ["corn", "hamburger", "swiss cheese", "american cheese", "hamburger buns", "hotdog buns", "watermelon", "pasta", "potato salad", "vegetable", "condiments", "ketchup", "mustard", "relish", "salt", "pepper" ];
@drinks_needed = ["beer", "ice tea", "water", "soda"];
@supplies_needed = ["ice", "bags of ice", "ice pack", "cups", "plates", "cup", "plate", "utensils", "fork", "knife", "spoon", "big spoon", "napkins", "trashbag", "trash bag", "moist towels", "paper towels", "a really cute picnic basket", "volleyball" ];
@supplied_by_people = [];

welcome_first_person = Greet.new(@food_needed, @drinks_needed, @supplies_needed)
welcome_first_person.display_greeting

choose_brought = ExecutePicnic.new(@food_needed, @drinks_needed)
choose_brought.bringing_food
