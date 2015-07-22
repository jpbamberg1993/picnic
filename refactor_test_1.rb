
# Greetings

	def display_greeting

		puts <<-END
			So Glad that you are coming to our picnic!!!!
			Do you feel like bringing anything along?
			If so please run this program.
			Thank you!!!!


			This is what we need to provide
				- Food    : #{@food_needed.join(', ')}


				- Drinks  : #{@drinks_needed.join(', ')};


				- Supplies: #{@supplies_needed.join(', ')};
		END
	end

# Methods for insertion

  def thank_provider
    puts "That's great people really like #{@supplied_by_people}."
  end

  def dismiss_lazy
    puts "That's ok someone else will bring stuff."
  end

  def need_supply?
    @supplies_needed.include?(item)
  end

  def choose_food
    puts "Well that's geat just so happens we are in need of some food. What are you going to bring?"
    @supplied_by_people << @supply
      puts "Sorry we don't need that!"
      choose_food
  end

  def choose_supplies
    puts "Well that's geat just so happens we are in need of some supplies. What are you going to bring?"
    @supply = gets.chomp.downcase
    if need_supply? @supply
      @supplied_by_people << @supply
      thank_provider(@supply)
    else
      puts "Sorry we don't need that!"
      choose_supplies
    end
  end

  def choose_drink(drink_choice)
    @supplied_by_people.push(drink_choice)
    @drinks_needed.delete(drink_choice)
    puts "Great! People love #{drink_choice}"
  end

  def drink_brought
    puts 'Thank You!'
    puts 'What do you want to bring?'
    drink_choice = gets.chomp.downcase
    case drink_choice
    when 'beer'
      choose_drink(drink_choice)
    when 'ice tea'
      choose_drink(drink_choice)
    when 'water'
      choose_drink(drink_choice)
    when 'soda'
      choose_drink(drink_choice)
     end
  end

  def bringing_food
    puts "Do you want to bring food to eat? \"Y\"es or \"N\"o\"."
    @supply = gets.chomp.downcase.chars.first
    case @supply
    when 'y'
      choose_food
    else
      dismiss_lazy
    end
  end

  def bringing_supplies
    puts "Do you live near a supplystore? \"Y\"es or \"N\"o\"."
    @supply = gets.chomp.downcase.chars.first
    case @supply
    when 'y'
      choose_supplies
    else
      dismiss_lazy
    end
  end

  def bringing_drinks
    puts "Do you want to bring something to drink? \"Y\"es or \"N\"o\"."
    choice = gets.chomp.downcase.chars.first

    case choice
    when 'y'
      drink_brought
    else
      puts "It's ok still come!"
    end
  end

class ExecutePicnic
	attr_accessor :food_needed, :supplies_needed, :supplied_by_people

	def initialize(food_needed, supplies_needed, drinks_needed, supplied_by_people)
		@food_needed 					= food_needed
		@supplies_needed 			= supplies_needed
		@supplied_by_people		= supplied_by_people
		@drinks_needed				= drinks_needed
	end

	def bringing_food
		puts "Do you want to bring food to eat? \"Y\"es or \"N\"o\"."
		@supply = gets.chomp.downcase.chars.first
		case @supply
			when "y"
				choose_food
			else
				dismiss_lazy
		end
	end

	def bringing_supplies
		puts "Do you live near a supplystore? \"Y\"es or \"N\"o\"."
		@supply = gets.chomp.downcase.chars.first
		case @supply
			when "y"
				choose_supplies
			else
				dismiss_lazy
		end
	end

	def bringing_drinks
		puts "Do you want to bring something to drink? \"Y\"es or \"N\"o\"."
		choice = gets.chomp.downcase.chars.first

		case choice
			when "y"
				drink_brought
			else
				puts "It's ok still come!"
		end
	end

	def get_name
		puts "What is your name?"
		name = gets.chomp
		puts "Thanks #{name.capitalize}! I've got you signed up to bring #{@supplied_by_people.join(', ')}."
	end
end
