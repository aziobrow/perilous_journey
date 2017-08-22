require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/wagon_train'

class WagonTrainTest < Minitest::Test

  # def test_it_exists
  #   wt = WagonTrain.new
  #   assert_instance_of WagonTrain, wt
  # end
  #
  # def test_it_instantiates_linked_list
  #   wt = WagonTrain.new
  #   refute_nil wt.list
  # end
  #
  # def test_it_appends_node
  #   wt = WagonTrain.new
  #   assert_equal "Burke", wt.append('Burke')
  # end
  #
  # def test_it_recognizes_head
  #   wt = WagonTrain.new
  #   wt.append('Burke')
  #   refute_nil wt.list.head
  # end
  #
  # def test_it_knows_head_surname
  #   wt = WagonTrain.new
  #   wt.append('Burke')
  #   assert_equal 'Burke', wt.list.head.surname
  # end
  #
  # def test_it_holds_multiple_nodes
  # wt = WagonTrain.new
  # wt.append('Burke')
  # wt.append('West')
  # assert_equal 2, wt.count
  # end

  def test_it_sums_supplies
    wt = WagonTrain.new
    wt.append('Frodo', {'pounds of lembas' => 10})
    wt.append('Samwise', {'pounds of second breakfast' => 20})
    assert_equal ({'pounds of lembas' => 30, 'pounds of second breakfast' => 20}), wt.supplies
  end

  # def test_it_sums_supplies
  #   wt = WagonTrain.new
  #   wt.append('Burke', {'pounds of food' => 10})
  #   wt.append('West', {'pounds of food' => 20})
  #   assert_equal ({'pounds of food' => 30}), wt.supplies
  # end
end
