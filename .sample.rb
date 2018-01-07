def yeller(array)
  bbb = []
  array.each do |aaa|
    puts aaa
    bbb.push aaa
  end
  puts bbb
  puts bbb.class

  ccc = bbb.map(&:upcase).join
  puts ccc
end

#yeller(['a','b','c'])

def random_sub
  aaa = ('a'..'z').to_a.shuffle[0..7].join
  puts aaa
end

#random_sub

def string_shuffle(s)
  aaa = s.split('').shuffle.join
  puts aaa
end
#string_shuffle("hisamurataiki")

class User
  attr_accessor :name, :email

  def initialize(attributes = {})
    @name  = attributes[:name]
    @email = attributes[:email]
  end

  def formatted_email
    "#{@name} <#{@email}>"
  end
end
