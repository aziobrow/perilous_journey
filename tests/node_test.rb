require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test

  def test_node_initializes_and_holds_surname #break up
    node = Node.new('Burke')
    assert_instance_of Node, node
    assert_equal 'Burke', node.surname
    node = Node.new('Duggar')
    assert_equal 'Duggar', node.surname
  end

  def test_node_initializes_with_supplies
    node = Node.new('Michelle')
    assert_instance_of Hash, node.supplies #empty hash
    node = Node.new('Voldemort', {'kids' => 19})
    assert_equal ({'kids' => 19}), node.supplies
  end

  def test_it_knows_current_node_and_next_node
    node = Node.new('JimBob')
    assert_equal 'JimBob', node.surname
    assert_nil node.next_node
  end

end
