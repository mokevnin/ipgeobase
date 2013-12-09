#encoding: utf-8

require 'test_helper'

class IpgeobaseTest < TestCase
  def setup
    @ip = '46.8.114.116'
    @stub = stub_request(:get, "#{Ipgeobase::URL}?ip=#{@ip}").
      with(:headers => {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
      to_return(:status => 200, :body => load_fixture('response_not_utf.xml'), :headers => {})
  end

  def test_lookup_http_query
    Ipgeobase.lookup @ip

    assert_requested @stub
  end

  def test_lookup_response_object
    meta = Ipgeobase.lookup @ip

    assert_equal 54.321480, meta.lat
  end

  def test_should_encode_to_utf8
    meta = Ipgeobase.lookup @ip

    assert_equal "Ульяновск", meta.city
  end
end
