require 'pry'

class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def admin?
    @name == 'Admin'
  end

end

user = User.new('Kapitan')
puts user.admin? # false


def user.admin?
  super || @name == 'Kapitan'
end

puts user.admin? # true

