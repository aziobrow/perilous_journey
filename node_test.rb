require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test

  def test_it_exists
    node = Node.new('Burke')
    assert_instance_of Node, node
  end

  def test_it_has_a_surname
    node = Node.new('Burke')
    assert_equal 'Burke', node.surname
  end

  def test_it_can_have_another_surname
    node = Node.new('Duggar')
    assert_equal 'Duggar', node.surname
  end

  def test_it_knows_if_next_node_exists
    node = Node.new('JimBob')
    assert_equal nil, node.next_node
  end
end
