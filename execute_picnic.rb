require "./refactor_test_1.rb"


welcome_first_person = Greet.new(@food_needed, @drinks_needed, @supplies_needed)
welcome_first_person.display_greeting

choose_brought = ExecutePicnic.new(@food_needed, @drinks_needed)
choose_brought.bringing_food
