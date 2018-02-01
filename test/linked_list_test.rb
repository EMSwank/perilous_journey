require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require './lib/node'

class LinkedListTest < Minitest::Test

    def test_it_exists
        list = LinkedList.new

        assert_instance_of LinkedList, list
    end

    def test_it_has_a_head
        list = LinkedList.new

        assert_nil list.head
    end

    def test_it_can_append
        list = LinkedList.new

        assert_instance_of Node, list.append("West", {"pounds of food" => 300})
    end

    def test_next_node_is_nil
        list = LinkedList.new
        list.append("West", {"pounds of food" => 300})

        assert_nil list.head.next_node
    end

    def test_it_counts
        list = LinkedList.new
        list.append("West", {"pounds of food" => 300})

        assert_equal 1, list.count
    end

    def test_it_counts_more_than_one
        list = LinkedList.new
        list.append("Rhodes", {"pounds of food" => 300})
        list.append("Hardy", {"pounds of food" => 300})
        list.append("Henderson", {"pounds of food" => 300})

        assert_equal 3, list.count
    end 

    def test_it_returns_a_string
        list = LinkedList.new
        list.append("West", {"pounds of food" => 300})

        assert_equal "The West family", list.to_string
    end

    def test_it_can_take_more_than_one_family
        list = LinkedList.new
        list.append("Rhodes", {"pounds of food" => 300})
        list.append("Hardy", {"pounds of food" => 300})

        assert_equal 2, list.count
    end

    def test_it_returns_a_string_with_three_families
        list = LinkedList.new
        list.append("Rhodes", {"pounds of food" => 300})
        list.append("Hardy", {"pounds of food" => 300})
        list.append("Henderson", {"pounds of food" => 300})

        assert_equal "The Rhodes family, followed by the Hardy family, followed by the Henderson family", list.to_string
    end

    def test_it_prepends_node_to_front_of_list
        list = LinkedList.new
        list.append("Brooks", {"pounds of food" => 300})
        list.append("Henderson", {"pounds of food" => 300})
        list.prepend("McKinney", {"pounds of food" => 300})

        assert_instance_of Node, list.prepend("McKinney", {"pounds of food" => 300})
    end

    def test_it_can_insert_a_node
        list = LinkedList.new
        list.append("Brooks", {"pounds of food" => 300})
        list.append("Henderson", {"pounds of food" => 300})
        list.prepend("McKinney", {"pounds of food" => 300})
        list.insert(1, "Lawson", {"pounds of food" => 300})

        assert_equal "The McKinney family, followed by the Lawson family, followed by the Brooks family, followed by the Henderson family", list.to_string
    end 

    def test_it_can_find
        list = LinkedList.new
        list.append("McKinnney", {"pounds of food" => 300})
        list.append("Lawson", {"pounds of food" => 300})
        list.append("Brooks", {"pounds of food" => 300})
        list.append("Henderson", {"pounds of food" => 300})

        assert_equal "The Brooks family", list.find(2, 1)
        assert_equal "The Lawson family, followed by the Brooks family, followed by the Henderson family", list.find(1, 3)
    end 

    def test_includes_p
        skip
        list = LinkedList.new
        list.append("McKinnney", {"pounds of food" => 300})
        list.append("Lawson", {"pounds of food" => 300})
        list.append("Brooks", {"pounds of food" => 300})
        list.append("Henderson", {"pounds of food" => 300})

        assert list.includes?("Brooks")
        refute list.includes?("Chapman")
    end 

    def test_pop_returns_string_for_popped_node
        skip
        list = LinkedList.new
        list.append("McKinnney", {"pounds of food" => 300})
        list.append("Lawson", {"pounds of food" => 300})
        list.append("Brooks", {"pounds of food" => 300})
        list.append("Henderson", {"pounds of food" => 300})

        expected = "The Henderson family has died of dysentery"

        assert_equal  expected, list.pop
        assert_equal 3, list.count
    end 

    def test_pop_deletes_the_last_wagon_and_tells_why
        skip
        list = LinkedList.new
        list.append("McKinnney", {"pounds of food" => 300})
        list.append("Lawson", {"pounds of food" => 300})
        list.append("Brooks", {"pounds of food" => 300})
        list.append("Henderson", {"pounds of food" => 300})

        list.pop
        assert_equal 3, list.count
    end 

end
