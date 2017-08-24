require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require 'pry'


    #you can use variables in assertions
    #use multiple assertions

class LinkedListTest < Minitest::Test

  def test_it_exists
    list = LinkedList.new
    assert_instance_of LinkedList, list
    assert_nil list.head
  end

  def test_it_knows_head
    list = LinkedList.new
    assert_nil list.head
  end

  def test_append_returns_node_object
    list = LinkedList.new
    node = list.append('Fred',{})
    assert_instance_of Node, node
  end

  def test_it_appends_with_supplies
    list = LinkedList.new
    node1 = list.append('Harry')
    node2 = list.append('Voldemort',{"horcrux" => 7})
    assert_equal ({}), node1.supplies
    assert_equal ({"horcrux" => 7}), node2.supplies
  end

  def test_it_assigns_head
    list = LinkedList.new
    node = list.append('Jill')
    assert_equal node, list.head
  end

  def test_it_recognizes_next_node
    list = LinkedList.new
    node1 = list.append('Jill')
    assert_nil node1.next_node
    node2 = list.append('Jack')
    assert_equal node2, node1.next_node
  end

  def test_it_can_count_elements_in_list
    list = LinkedList.new
    assert_equal 0, list.count
    list.append('The Doctor')
    assert_equal 1, list.count
    list.append('Clara')
    list.append('Amy')
    assert_equal 3, list.count
  end

  def test_it_prints_a_string_of_surnames
    list = LinkedList.new
    list.append('Capulet')
    assert_equal "The Capulet family", list.to_string
    list.append('Montague')
    assert_equal "The Capulet family, followed by the Montague family", list.to_string
    list.append('Other')
    assert_equal "The Capulet family, followed by the Montague family, followed by the Other family", list.to_string
  end

  def test_it_prepends_a_node_as_head_without_supplies
    list = LinkedList.new
    list.append('Gomez')
    list.prepend('Morticia')
    assert_equal 'Morticia', list.head.surname
  end

  def test_it_finds_and_returns_string_list
    list = LinkedList.new
    list.append('Doc')
    assert_equal 'The Doc family', list.to_string
    list.append('Sleepy')
    list.append('Grumpy')
    assert_equal 'The Doc family, followed by the Sleepy family', list.find(0,2)
    assert_equal 'The Sleepy family, followed by the Grumpy family', list.find(1,4)
    #put in invalid find index
    #assert_equal 'The Grumpy family', list.find(3)
  end

  def test_it_prepends_a_node_as_head_with_supplies
    list = LinkedList.new
    list.append('Cousin It', {'eyes' => 0})
    list.prepend('Wednesday', {'misery' => 100})
    assert_equal 'The Wednesday family, followed by the Cousin It family', list.to_string
  end

  def test_it_inserts_a_node_at_given_position
    list = LinkedList.new
    list.append('Jason')
    list.append('Freddy')
    list.insert(1, 'Alien')
    assert_equal 'The Jason family, followed by the Alien family, followed by the Freddy family', list.to_string
    # list.insert(0, 'Predator')
    # assert_equal 'The Predator family, followed by the Jason family, followed by the Alien family, followed by the Freddy family', list.to_string
  end

 def test_it_finds_an_element_at_given_position_and_returns_string
   list = LinkedList.new
   list.append('Snow White')
   list.append('Cinderella')
   list.append('Sleeping Beauty')
   assert_equal 'The Cinderella family', list.find(1)
 end

 # def test_it_searches_for_included_value
 #   list = LinkedList.new
 #   #refute list.includes?('Moaning Myrtle')
 #   list.append('Harry')
 #   list.append('Ron')
 #   assert list.includes?('Harry')
 #   refute list.includes?('Moaning Myrtle')
 # end

 def test_it_pops_last_element_off
   list = LinkedList.new
   list.append('Gandalf')
   list.append('Saruman')
   list.append('Radagast')
   list.pop
   assert_equal "The Gandalf family, followed by the Saruman family", list.to_string
   assert_instance_of Node, list.pop
   #if there's only two elements or no elements, etc.
 end

 def test_merge_supplies_with_same_key_sums_keys_with_same_value
   list = LinkedList.new
   supplies1 = {'jetpacks'=>5}
   supplies2 = {'jetpacks' => 4}
   assert_equal ({'jetpacks' => 9}), list.merge_supplies_with_same_key(supplies1, supplies2)
 end

 def test_it_collects_and_sums_supplies
   list = LinkedList.new
   list.append('Shaggy',{'scooby snacks' => 5})
   list.append('Velma')
   list.append('Scooby',{'scooby snacks' => 25})
   assert_equal ({'scooby snacks' => 30}), list.collect_supplies
 end

end
