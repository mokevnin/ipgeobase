require 'bundler/setup'
Bundler.require

MiniTest::Unit.autorun

class TestCase < MiniTest::Unit::TestCase
  def load_fixture(filename)
    File.read(File.dirname(__FILE__) + "/fixtures/#{filename}")
  end
end
