require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test

  def test_node_exists
    node = Node.new('Burke')

    assert_instance_of Node, node
  end

  def test_node_holds_surname
    node = Node.new('Duggar')

    assert_equal 'Duggar', node.surname
  end

  def test_node_initializes_without_supplies
    node = Node.new('Michelle')

    assert_equal ({}), node.supplies
  end

  def test_node_initializes_with_supplies
    node = Node.new('Michelle', {'kids' => 19})

    assert_equal ({'kids' => 19}), node.supplies
  end

  def test_it_knows_current_node_and_next_node
    node = Node.new('JimBob')

    assert_equal 'JimBob', node.surname
    assert_nil node.next_node
  end
  
end
