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
    #maybe see if this runs twice
    wt = WagonTrain.new
    wt.append('Frodo', {'pounds of lembas bread' => 10})
    wt.append('Samwise', {'pounds of lembas bread' => 20})
    wt.append('Boromir')
    assert_equal ({'pounds of lembas bread' => 30}), wt.supplies
  end

  def test_random_animal_assignment
    wt = WagonTrain.new
    assert_equal ({'whatever' => 6}), wt.random_animal_assignment
  end

  def test_random_animal_assignment
    wt = WagonTrain.new
    assert_equal ({'whatever' => 6}), wt.go_hunting
  end
  #how do I test this method?
  # def test_animals_are_randomly_assigned_where_total_is_less_than_ten
  # end
end
