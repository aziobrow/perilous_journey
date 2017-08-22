require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require 'pry'


    #you can use variables in assertions
    #use multiple assertions

class LinkedListTest < Minitest::Test

  def test_it_initializes_and_knows_head
    list = LinkedList.new
    assert_instance_of LinkedList, list
    assert_nil list.head
  end

  def test_append_returns_node_object
    list = LinkedList.new
    node1 = list.append('Fred',{})
    node2 = list.append('Wilma',{})
    node3 = list.append('BamBam',{'stones' => 5})

    assert_instance_of Node, node1
    assert_instance_of Node, node2
    assert_instance_of Node, node3
    assert_equal node1, list.head
    assert_equal 'Wilma', node2.surname
  end

  def test_it_appends_with_supplies
    list = LinkedList.new
    node1 = list.append('Harry',{})
    node2 = list.append('Voldemort',{"horcrux" => 7})
    assert_equal ({}), node1.supplies
    assert_equal ({"horcrux" => 7}), node2.supplies
  end

  def test_it_assigns_head_and_head_recognizes_second_node
    list = LinkedList.new
    node1 = list.append('Jill')
    assert_equal node1, list.head
    assert_nil node1.next_node
    node2 = list.append('Jack', {'pail of water' => 0})
    assert_equal node2, node1.next_node
  end

  def test_it_can_count_elements_in_list
    list = LinkedList.new
    assert_equal 0, list.count
    list.append('The Doctor', {'Tardis' => 1})
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
    list.append('Other',{'wealth' => 500})
    assert_equal "The Capulet family, followed by the Montague family, followed by the Other family", list.to_string
  end

  def test_it_prepends_a_node_as_head
    list = LinkedList.new
    list.append('Gomez')
    list.prepend('Morticia')
    assert_equal 'Morticia', list.head.surname
    list.prepend('Wednesday',{'misery' => 100})
    assert_equal 'Wednesday', list.head.surname
    assert_equal 'The Wednesday family, followed by the Morticia family, followed by the Gomez family', list.to_string
  end

  def test_it_inserts_a_node_at_given_position
    list = LinkedList.new
    list.append('Jason',{'hockey mask' => 5})
    list.prepend('Freddy')
    list.insert(1, 'Alien')
    assert_equal 3, list.count
    assert_equal 'Freddy', list.head.surname
    assert_equal 'Alien', list.head.next_node.surname
    assert_equal 'The Freddy family, followed by the Alien family, followed by the Jason family', list.to_string
  end

 def test_it_finds_an_element_at_given_position_and_returns_string
   list = LinkedList.new
   list.append('Snow White')
   list.append('Cinderella')
   list.append('Sleeping Beauty')
   assert_equal 'The Cinderella family', list.find(1)
   assert_equal 'The Snow White family', list.find(0)
 end

 def test_it_finds_and_returns_string_list
   #check assertion two
   list = LinkedList.new
   list.append('Sleepy')
   assert_equal 'The Sleepy family', list.to_string
   list.append('Grumpy')
   list.prepend('Doc')
   assert_equal "The Doc family, followed by the Sleepy family, followed by the Grumpy family", list.to_string
   assert_equal 'The Sleepy family, followed by the Grumpy family', list.find(1,3)
   assert_equal 'The Doc family', list.find(0)
 end

 def test_it_searches_for_included_value
   list = LinkedList.new
   list.append('Harry')
   list.append('Ron')
   list.append('Hermione')
   assert list.includes?('Harry')
   refute list.includes?('Moaning Myrtle')
 end

 def test_it_pops_last_element_off
   list = LinkedList.new
   list.append('Frodo')
   list.append('Samwise')
   list.append('Gandalf')
   list.pop
   assert_equal 2, list.count
   assert_equal "The Frodo family, followed by the Samwise family", list.to_string
 end


   def test_it_collects_and_sums_supplies
     #maybe check if this runs twice
     list = LinkedList.new
     list.append('Shaggy',{'scooby snacks' => 5})
     list.append('Velma')
     list.append('Scooby',{'scooby snacks' => 25})
     assert_equal ({'scooby snacks' => 30}), list.collect_supplies
   end

end
