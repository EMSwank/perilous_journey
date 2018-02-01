require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require './lib/linked_list'
require './lib/wagon_train'

class WagonTrainTest < Minitest::Test
    def test_it_exists
        wt = WagonTrain.new

        assert_instance_of WagonTrain, wt
    end
    
    def test_it_returns_list_head_is_nil
        wt = WagonTrain.new
    
        assert_nil wt.head
    end

    def test_it_can_append
        wt = WagonTrain.new

        wt.append("Burke", {"pounds of food" => 200})

        assert_equal "Burke", wt.head.surname
    end

    def test_it_can_count_wagons
        wt = WagonTrain.new
        
        wt.append("Burke", {"pounds of food" => 200})
        wt.append("West", {"pounds of food" => 100})
        
        assert_equal 2, wt.count
    end

    def test_it_prepends_with_supplies
        wt = WagonTrain.new

        wt.append("Burke", {"pounds of food" => 200})
        wt.append("West", {"pounds of food" => 100})
        wt.prepend("Hardy", {"spare wagon tongues" => 3})

        assert_equal "Hardy", wt.head.surname
    end

    def test_it_inserts_supplies
        wt = WagonTrain.new

        wt.list.insert(1, "West", {"pounds of food" => 300})
        # require 'pry'; binding.pry

        assert_equal "West", wt.surname
        # assert_equal({"pounds of food" => 300}, expected.supplies)
    end
end