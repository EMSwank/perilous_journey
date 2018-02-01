require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test

    def test_it_exists
        node = Node.new("Burke", {"pounds of food" => 200})

        assert_instance_of Node, node
    end

    def test_it_take_a_surname
        node = Node.new("Burke", {"pounds of food" => 200})

        assert_equal "Burke", node.surname
    end

    def test_it_can_have_next_node
        node = Node.new("Burke", {"pounds of food" => 200})

        assert_nil node.next_node
    end

    def test_it_takes_supplies
        node = Node.new("Burke", {"pounds of food" => 200})

        assert_equal 200, node.supplies["pounds of food"]
    end
end 