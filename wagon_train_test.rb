require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/wagon_train'

class WagonTrainTest < Minitest::Test

  def test_it_exists
    wt = WagonTrain.new
    assert_instance_of WagonTrain, wt
  end

  def test_it_instantiates_linked_list
    wt = WagonTrain.new
    refute_nil wt.list
  end

  def test_it_appends_node
    wt = WagonTrain.new
    assert_equal "Burke", wt.append('Burke')
  end

  def test_it_recognizes_head
    wt = WagonTrain.new
    wt.append('Burke')
    refute_nil wt.list.head
  end

  def test_it_knows_head_surname
    wt = WagonTrain.new
    wt.append('Burke')
    assert_equal 'Burke', wt.list.head.surname
  end

  def test_it_holds_multiple_nodes
  wt = WagonTrain.new
  wt.append('Burke')
  wt.append('West')
  assert_equal 2, wt.count
  end
end