require 'uri'
require 'open-uri'

module Ipgeobase
  URL = 'http://ipgeobase.ru:7020/geo'
  autoload 'IpMetaData', 'ipgeobase/ip_meta_data'

  def self.lookup(ip, params = {})
    uri = URI.parse(URL)
    uri.query = URI.encode_www_form :ip => ip
    resp = open(uri, params).read()
    IpMetaData.parse(resp.to_s)
  end
end
