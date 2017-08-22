require './lib/linked_list'
require './lib/node'

class WagonTrain
  def initialize
    @linked_list = LinkedList.new()
    @hunted_food = {}
  end

  def list
    @linked_list
  end

  def append(surname,supplies = {})
    @linked_list.append(surname,supplies)
  end

  def head
    @linked_list.head
  end

  def count
    @linked_list.count
  end

  def supplies
    if @hunted_food != {}
      @linked_list.collect_supplies.merge(@hunted_food){|food, first_amount, second_amount| first_amount + second_amount}
      #bad output with multiple nodes--seems to be merging with itself and then adding hunting food???
    else
      @linked_list.collect_supplies
    end
  end

  # def random_animal_counts
  #   {'squirrel' => rand(6), 'deer' => rand(6), 'bison' => rand(6)}
  # end

  def go_hunting
    animals = {'squirrel' => rand(6), 'deer' => rand(6), 'bison' => rand(6)}
    until animals.values.reduce(:+) < 6
      animals = {'squirrel' => rand(6), 'deer' => rand(6), 'bison' => rand(6)}
    end
      squirrel = animals['squirrel'] * 2
      deer = animals['deer'] * 40
      bison = animals['bison'] * 100
      @hunted_food = {'pounds of food' => squirrel + deer + bison}
      "You got #{animals['squirrel']} squirrels, #{animals['deer']} deer and #{animals['bison']} bison for #{@hunted_food['pounds of food']} pounds of food."
  end

end
