require 'iconv'

module Ipgeobase
  class IpMetaData
    include HappyMapper

    tag 'ip-answer'
    element :city, String, :deep => true
    element :country, String, :deep => true
    element :region, String, :deep => true
    element :district, String, :deep => true
    element :lat, Float, :deep => true
    element :lng, Float, :deep => true

    def city
      Iconv.iconv('windows-1251', 'utf-8', @city).first
    end

    def country
      Iconv.iconv('windows-1251', 'utf-8', @country).first
    end

    def region
      Iconv.iconv('windows-1251', 'utf-8', @region).first
    end
  end
end
