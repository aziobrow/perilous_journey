require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/wagon_train'

class WagonTrainTest < Minitest::Test

  def test_it_exists_and_initializes_linked_list
    wt = WagonTrain.new
    assert_instance_of WagonTrain, wt
    refute_nil wt.list
  end

  def test_it_appends_first_node_as_head_that_stores_supplies
    wt = WagonTrain.new
    wt.append('Kevin McAllister',{'pranks' => 5})
    assert_instance_of Node, wt.head
    assert_equal 'Kevin McAllister', wt.head.surname
    assert_equal ({'pranks' => 5}), wt.head.supplies
  end


  def test_it_holds_and_counts_multiple_nodes
    wt = WagonTrain.new
    node1 = wt.append('Superman')
    node2 = wt.append('Batman',{'Batmobile' => 1})
    assert_equal 2, wt.count
    assert_equal node1, wt.head
    assert_equal node2, wt.head.next_node
  end

  def test_it_sums_supplies
    wt = WagonTrain.new
    wt.append('Frodo', {'pounds of lembas bread' => 10})
    wt.append('Samwise', {'pounds of lembas bread' => 20})
    assert_equal ({'pounds of lembas bread' => 30}), wt.supplies
    wt.append('Boromir')
    assert_equal ({'pounds of lembas bread' => 30}), wt.supplies
  end

  def test_random_animal_assignment_generates_hash_with_summed_values_five_or_less
    wt = WagonTrain.new
    assert_instance_of Hash, wt.random_animal_assignment
    10.times do
      assert_operator 5, :>=, wt.random_animal_assignment.values.sum
    end
  end

  def test_pounds_of_hunted_food_calculates_total_animal_meat
    wt = WagonTrain.new
    squirrels = 3
    deer = 2
    bison = 1
    refute_nil wt.pounds_of_hunted_food(squirrels,deer,bison)
    assert_equal 186, wt.pounds_of_hunted_food(squirrels,deer,bison)
  end

  def test_hunting_string_outputs_string_with_each_animal_count
    wt = WagonTrain.new
    squirrels = 3
    deer = 2
    bison = 1
    assert_equal "You got 3 squirrels, 2 deer and 1 bison", wt.hunting_string_output(squirrels,deer,bison)
  end

  def test_hunting_string_outputs_string_for_singular_squirrel
    wt = WagonTrain.new
    squirrels = 1
    deer = rand(6)
    bison = rand(6)
    assert_equal "You got 1 squirrel, #{deer} deer and #{bison} bison", wt.hunting_string_output(squirrels,deer,bison)
  end
end
