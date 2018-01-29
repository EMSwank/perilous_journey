require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test

    def test_it_exists
        node = Node.new("Burke")

        assert_instance_of Node, node
    end

    def test_it_take_a_surname
        node = Node.new("Burke")

        assert_equal "Burke", node.surname
    end

    def test_it_can_have_next_node
        node = Node.new("Burke")

        assert_nil node.next_node
    end
end 