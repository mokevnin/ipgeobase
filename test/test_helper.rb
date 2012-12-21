require 'bundler/setup'
Bundler.require

require 'coveralls'
Coveralls.wear!('rails')

MiniTest::Unit.autorun

class TestCase < MiniTest::Unit::TestCase
  def load_fixture(filename)
    File.read(File.dirname(__FILE__) + "/fixtures/#{filename}")
  end
end
