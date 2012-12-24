require 'bundler/setup'
Bundler.require

#WebMock.disable_net_connect!(:allow => "www.example.org:8080")

WebMock.disable_net_connect! allow: %w{coveralls.io}

require 'coveralls'
Coveralls.wear!('rails')

MiniTest::Unit.autorun

class TestCase < MiniTest::Unit::TestCase
  def load_fixture(filename)
    File.read(File.dirname(__FILE__) + "/fixtures/#{filename}")
  end
end
