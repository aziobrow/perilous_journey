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
    stored_supplies = @linked_list.collect_supplies
    if @hunted_food != {}
      stored_supplies.merge(@hunted_food){|food, first_amount, second_amount| first_amount + second_amount}
    else
      stored_supplies
    end
  end

  def random_animal_assignment
    animals = [['squirrel',0],['deer',0],['bison',0]]
      5.times do
        element = animals.sample[1]
        element +=1
      end
    animals.to_h
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
      @hunted_food = pounds_of_food(squirrels,deer,bison).values[0]
      hunting_string_output(squirrels,deer,bison) + " for #{@hunted_food} pounds of food."
  end

  # def random_animal_assignment
  #     random_animal_counts = []
  #     maximum = 6
  #     3.times do
  #       animal_count = rand(maximum)
  #       random_animal_counts << animal_count
  #       maximum -= animal_count
  #     end
  #     random_animal_counts
  #   end

end
