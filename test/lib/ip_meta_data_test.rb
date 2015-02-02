# encoding: utf-8

require 'test_helper'

class IpMetaDataTest < TestCase
  def test_should_work_with_incorrect_response
    resp =  %Q{<?xml version="1.0" encoding="windows-1251"?><ip-answer><ip value="127.0.0.1"><message>Not found</message></ip></ip-answer>}
    meta = Ipgeobase::IpMetaData.parse(resp)
    assert_equal nil, meta.city
  end
end
