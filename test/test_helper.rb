require 'bundler/setup'
Bundler.require

require "minitest/autorun"

if ENV['TRAVIS']
  require 'coveralls'
  Coveralls.wear!
end

class TestCase < MiniTest::Test
  def load_fixture(filename)
    File.read(File.dirname(__FILE__) + "/fixtures/#{filename}")
  end
end
