require 'happymapper'
require 'iconv' unless String.instance_methods.include?(:encode)

module Ipgeobase
  class IpMetaData
    include HappyMapper

    tag 'ip-answer'
    element :inetnum, String, :deep => true
    element :city, String, :deep => true
    element :country, String, :deep => true
    element :region, String, :deep => true
    element :district, String, :deep => true
    element :lat, Float, :deep => true
    element :lng, Float, :deep => true

    def city
      encode(@city)
    end

    def country
      encode(@country)
    end

    def region
      encode(@region)
    end

    private

    def encode(api_string)
      if api_string.respond_to?(:encode)
        api_string.encode("UTF-8")
      else
        Iconv.iconv('utf-8', 'windows-1251', api_string).first
      end
    end
  end
end
