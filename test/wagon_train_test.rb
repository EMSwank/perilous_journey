require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require './lib/linked_list'

class WagonTrainTest < Minitest::Test
    def test_it_exists
        wagon = WagonTrain.new

        assert_instance_of wagon, WagonTrain
    end
    
end