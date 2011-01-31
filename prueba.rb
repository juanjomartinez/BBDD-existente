#!/usr/bin/ruby
require 'base64'

class String
  def hex_to_binary
    temp = gsub("\s", "");
    ret = []
    (0...temp.size()/2).each{|index| ret[index] = [temp[index*2, 2]].pack("H2")}
    return ret
  end
end

a = "7110eda4d09e062aa5e4a390b0a572ac0d2c0220"

bin = a.hex_to_binary

puts Base64.encode64(bin.join)
