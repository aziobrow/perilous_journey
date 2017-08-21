require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require 'pry'

class LinkedListTest < Minitest::Test

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
#   # def test_head_can_be_node
#   #   list = LinkedList.new
#   #   assert_instance_of Node, list.append('West')
#   # end
#
#   # def test_it_knows_next_node
#   #   list = LinkedList.new
#   #   node = list.append('Jill')
#   #   assert_equal nil, node.next_node
#   # end
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
 #   def test_it_pops_last_element_off
 #     #DO SOMETHING WITH THIS
 #     list = LinkedList.new
 #     list.append('Frodo')
 #     list.append('Samwise')
 #     list.append('Gandalf')
 #     list.pop
 #     assert_equal 'Samwise',
 #   end
 end

end
