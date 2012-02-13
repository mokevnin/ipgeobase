# Ipgeobase

## Install

Add this to your `Gemfile`:

    gem "configus"

## Examples

    ip_meta = Ipgeobase.lookup('10.11.12.134')
    ip_meta.city # => Москва
    ip_meta.country # => Россия
