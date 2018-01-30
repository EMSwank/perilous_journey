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

        assert_instance_of Node, list.append("West")
    end

    def test_next_node_is_nil
        list = LinkedList.new
        list.append("West")

        assert_nil list.head.next_node
    end

    def test_it_counts
        list = LinkedList.new
        list.append("West")

        assert_equal 1, list.count
    end

    def test_it_counts_more_than_one
        list = LinkedList.new
        list.append("Rhodes")
        list.append("Hardy")
        list.append("Henderson")

        assert_equal 3, list.count
    end 

    def test_it_returns_a_string
        list = LinkedList.new
        list.append("West")        # list.append("Hardy")

        assert_equal "The West family", list.to_string
    end

    def test_it_can_take_more_than_one_family
        list = LinkedList.new
        list.append("Rhodes")
        list.append("Hardy")

        assert_equal 2, list.count
    end

    def test_it_returns_a_string_with_three_families
        list = LinkedList.new
        list.append("Rhodes")
        list.append("Hardy")
        list.append("Henderson")

        assert_equal "The Rhodes family, followed by the Hardy family, followed by the Henderson family", list.to_string
    end

    def test_it_prepends_node_to_front_of_list
        list = LinkedList.new
        list.append("Brooks")
        list.append("Henderson")
        list.prepend("McKinney")

        assert_instance_of Node, list.prepend("McKinney")
    end

    def test_it_can_insert_a_node
        list = LinkedList.new
        list.append("brooks")
        list.append("kevin")
        list.insert(1, "gary")
        list.insert(1, "dave")
        list.append("janice")

# require "pry"; binding.pry
        assert_equal "dave", list.head.next_node.surname
        assert_equal "The brooks family, followed by the dave family, followed by the gary family, followed by the kevin family, followed by the janice family", list.to_string
    end 
end
