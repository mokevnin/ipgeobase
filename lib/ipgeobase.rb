require 'uri'
require 'net/http'

module Ipgeobase
  URL = 'http://ipgeobase.ru:7020/geo'
  autoload 'IpMetaData', 'ipgeobase/ip_meta_data'

  def self.lookup(ip)
    uri = URI.parse(URL)
    uri.query = URI.encode_www_form :ip => ip

    IpMetaData.parse(Net::HTTP.get(uri))
  end
end
