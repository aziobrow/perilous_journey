require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require 'pry'

class LinkedListTest < Minitest::Test
  # def test_it_appends_with_supplies
  #   list = LinkedList.new
  #   list.append('Voldemort',{"horcrux" => 7})
  #   require 'pry'; binding.pry
  #   assert_equal ({"horcrux" => 7}), supplies
  # end

#   def test_it_exists
#     list = LinkedList.new
#     assert_instance_of LinkedList, list
#   end
#
#   def test_it_knows_head_exists
#     list = LinkedList.new
#     assert_nil, list.head
#   end
#
  def test_append_returns_node_object
    list = LinkedList.new
    node1 = list.append('West',{})
    node2 = list.append('North',{})
    node3 = list.append('South',{'dog' => 5})
    assert_instance_of Node, node1
    assert_instance_of Node, node2
    assert_equal 'West', node1.surname
    assert_equal 'North', node2.surname
    assert_equal ({'dog' => 5}), node3.supplies
    assert_equal 3, list.count
  end

    #you can use variables in assertions
    #use multiple assertions

  # def test_it_knows_next_node #name: creates test_append_on_empty_list_creates_head_node
  #   list = LinkedList.new
  #   node = list.append('Jill',{})
  #   assert_equal node, list.head
  #   assert_nil node.next_node
  # end

#
#   def test_it_can_count_elements
#     list = LinkedList.new
#     list.append('Jessa')
#     assert_equal 1, list.count
#   end
#
#   def test_it_prints_a_surname_string
#     list = LinkedList.new
#     list.append('West')
#     assert_equal "The West family", list.to_string
#   end
#
#   def test_it_prints_a_different_surname_string
#     list = LinkedList.new
#     list.append('Jill')
#     assert_equal "The Jill family", list.to_string
#   end
#
#   def test_it_prepends_a_node_as_head
#     list = LinkedList.new
#     list.append('John')
#     list.prepend('Josh')
#     assert_equal 'Josh', list.head.surname
#   end
#
  # def test_it_inserts_a_node
  #   list = LinkedList.new
  #   list.append('Jingar')
  #   list.append('Jana')
  #   list.insert(1, 'Joshua')
  #   assert_equal 3, list.count
  # end
  #
  # def test_it_inserts_a_node_at_correct_position
  #   list = LinkedList.new
  #   list.append('Jingar')
  #   list.append('Jana')
  #   list.insert(1, 'Joshua')
  #   assert_equal 'Joshua', list.head.next_node.surname
  # end

 # def test_it_prints_a_list_of_surnames
 #   list = LinkedList.new
 #   list.append('Ah')
 #   list.append('Ba')
 #   list.append('Cha')
 #   list.to_string
 # end

 # def test_it_finds_an_element_at_correct_position
 #   list = LinkedList.new
 #   list.append('Snow White')
 #   list.append('Cinderella')
 #   list.append('Sleeping Beauty')
 #   assert_equal list.head.next_node, list.find(1)
 # end

 # def test_it_finds_and_returns_string
 #   list = LinkedList.new
 #   list.append('Snow White')
 #   list.append('Cinderella')
 #   list.append('Sleeping Beauty')
 #   assert_equal "The Cinderella family", list.find(1)
 # end

 # def test_it_finds_and_returns_string_list
 #   list = LinkedList.new
 #   list.append('Snow White')
 #   list.append('Cinderella')
 #   list.append('Sleeping Beauty')
 #   list.append('Mulan')
 #   list.append('Jane')
 #   list.append('Nala')
 #   assert_equal "The Cinderella family, followed by the Sleeping Beauty family", list.find(1,2)
 # end

 # def test_it_searches_for_included_value
 #   list = LinkedList.new
 #   list.append('Harry')
 #   list.append('Ron')
 #   list.append('Hermione')
 #   assert list.includes?('Harry')
 # end

 # def test_it_pops_element_off
 #   list = LinkedList.new
 #   list.append('Frodo')
 #   list.append('Samwise')
 #   list.append('Gandalf')
 #   list.pop
 #   assert_equal 2, list.count
 #
  #  def test_it_pops_last_element_off
  #    #DO SOMETHING WITH THIS
  #    list = LinkedList.new
  #    list.append('Frodo')
  #    list.append('Samwise')
  #    list.append('Gandalf')
  #    list.pop
  #    assert_equal 'Samwise',
  #  end

   def test_it_sums_supplies
     list = LinkedList.new
     list.append('Scooby',{'scooby snacks' => 0})
     list.append('Shaggy',{'scooby snacks' => 5})
     list.append('Velma',{'scooby snacks' => 25})
     assert_equal ({'scooby snacks' => 30}), list.collect_supplies
   end



end
