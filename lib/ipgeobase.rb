require 'uri'
require 'net/http'
require 'happymapper'

module Ipgeobase
  autoload 'Version', 'ipgeobase/version'
  autoload 'IpMetaData', 'ipgeobase/ip_meta_data'

  def self.lookup(ip)
    uri = URI.parse('http://ipgeobase.ru:7020/geo')
    uri.query = URI.encode_www_form :ip => ip
    IpMetaData.parse(Net::HTTP.get(uri))
  end
end
