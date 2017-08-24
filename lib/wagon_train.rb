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

  def add_hunted_food_to_supplies(supplies_collection, hunted_food)
    @linked_list.merge_supplies_with_same_key(supplies_collection, hunted_food)
  end

  def supplies
    stored_supplies = @linked_list.collect_supplies
    if @hunted_food != {}
      add_hunted_food_to_supplies(stored_supplies, @hunted_food)
    else
      stored_supplies
    end
  end

  def random_animal_assignment
    animals = [['squirrel',0],['deer',0],['bison',0]]
      rand(6).times do
        animals.sample[1] += 1
      end
    animals.to_h
  end

  def pounds_of_hunted_food(squirrels,deer,bison)
    squirrel_meat = squirrels * 2
    deer_meat = deer * 40
    bison_meat = bison * 100
    @hunted_food = {'pounds of food' => squirrel_meat + deer_meat + bison_meat}
    @hunted_food['pounds of food']
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
      total_meat = pounds_of_hunted_food(squirrels,deer,bison)
      hunting_string_output(squirrels,deer,bison) + " for #{total_meat} pounds of food."
  end

end
