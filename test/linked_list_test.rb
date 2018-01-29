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

    def test_it_returns_a_string
        list = LinkedList.new
        list.append("West")        # list.append("Hardy")

        assert_equal "The West family.", list.to_string
    end

    def test_it_can_take_more_than_one_family
        list = LinkedList.new
        list.append("Rhodes")
        list.append("Hardy")

        assert_equal 2, list.count
    end

    def test_it_returns_a_string_with_two_families
        list = LinkedList.new
        list.append("Rhodes")
        list.append("Hardy")

        assert_equal "The Rhodes family, followed by the Hardy family", list.to_string
    end
end