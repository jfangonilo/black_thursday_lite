require 'minitest/pride'
require 'minitest/autorun'
require './lib/sales_engine'
require 'csv'

class SalesEngineTest < Minitest::Test
  def setup
    @sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })
  end

  def test_it_exists
    assert_instance_of SalesEngine, @sales_engine
  end
end
