require_relative 'state_data'
# require_relative runs data based on a file relative to the directory


class VirusPredictor
    # Creating instance variables equal to the input arguments, state_of_origin, population_density, and population.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # Calling on predicted_deaths and speed_of_spread


  def virus_effects
    predicted_deaths
    speed_of_spread
  end

private
  # Formulates the number of deaths that will occur based on population_density and population from each state. Then prints the result.
  def predicted_deaths
#     when the population density increase by 50, the number of deaths changes by .1

    # case true
    # when @population_density >= 200 then
    #   number_of_deaths = (@population * 0.4).floor
    # when @population_density >= 150 then
    #   number_of_deaths = (@population * 0.3).floor
    # when @population_density >= 100 then
    #   number_of_deaths = (@population * 0.2).floor
    # when @population_density >= 50 then
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end
total_deaths = [1]
    death = (@population_density / x = 500)
    total_deaths << death
    total_deaths = total_deaths.min
    number_of_death = (@population * total_deaths).floor

    print "#{@state} will lose #{number_of_death} people in this outbreak"

  end
  # speed variable as a counter, incremented based on population density, higher density the faster the spread.
  def speed_of_spread
#     speed = 0.0

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end

    speed = 2.5
    counter = 50
    4.times do
      if @population_density >= counter then speed -= 0.5 end
        counter += 50
      end


    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state, pop_data|
  all_states = VirusPredictor.new(state, pop_data[:population_density], pop_data[:population])
  all_states.virus_effects
end


# Creating instances of the class virusPredictor and determine virus effects.

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects


# Reflection
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
  - One has a string as the key, the other are symbols as the key.
What does require_relative do? How is it different from require?
  - require_relative is to load another page relative to this parent directory, require looks for the file outside of the immediate dir, not relative to the other page.
What are some ways to iterate through a hash?
  -#each or #map!
When refactoring virus_effects, what stood out to you about the variables, if anything?
  - The variables did not need any arguments passed through them, as they were already instanced does not need to be argumented in the method.
What concept did you most solidify in this challenge?
  - Instance variables where solidified, along with iterating through a hash.
=end