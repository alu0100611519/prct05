#! /usr/local/rvm/rubies/ruby-2.0.0-p247/bin/ruby




  def gcd(u, v)
  u, v = u.abs, v.abs
  while v != 0 # Este era el error, no puede ser v == 0 sino mientras se distinto de 0 (!=0)
    u, v = v, u % v
  end
  u
end

puts gcd(6,3)
