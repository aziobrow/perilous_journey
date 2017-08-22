require_relative './linked_list'


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

  def random_animal_assignment
    animals = {'squirrel' => rand(6), 'deer' => rand(6), 'bison' => rand(6)}
      until animals.values.reduce(:+) < 6
      animals = {'squirrel' => rand(6), 'deer' => rand(6), 'bison' => rand(6)}
      end
    animals
  end

  def pounds_of_food(squirrels,deer,bison)
    squirrel_meat = squirrels * 2
    deer_meat = deer * 40
    bison_meat = bison * 100
    {'pounds of food' => squirrel_meat + deer_meat + bison_meat}
  end

  def hunting_string_output(squirrels,deer,bison)
    squirrel_string = "You got #{squirrels} squirrels"
      if squirrels == 1
        squirrel_string = squirrel_string.chop
      else
        squirrel_string
      end
    squirrel_string + ", #{deer} deer and #{bison} bison"
  end

  def go_hunting
    animal_counts = random_animal_assignment
      squirrels = animal_counts['squirrel']
      deer = animal_counts['deer']
      bison = animal_counts['bison']
      hunted_food = pounds_of_food(squirrels,deer,bison).values[0]
      hunting_string_output(squirrels,deer,bison) + " for #{hunted_food} pounds of food."
  end

end
