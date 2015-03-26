class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def admin?
    @name == 'Admin'
  end

end

# imagine admin is logged in..
user1 = User.new('Admin')
puts user1.admin?


# guest is logged in..
user2 = User.new('Dima')
puts user2.admin?


# another person is logged in..
user3 = User.new('Kapitan Grytsenko')
puts user3.admin?

# Що, як? я, я не адмін? я співробітник СБУ, я маю бути адміном

class SBUUser < User
  def name
    super || @name == 'Kapitan Grytsenko'
  end
end

user4 = SBUUser.new('Kapitan Grytsenko')

### Another way

module SBU

  def admin?
    super || @name == 'Kapitan Grytsenko'
  end

end

user1.extend SBU
user2.extend SBU
user3.extend SBU

puts user1.admin?
puts user2.admin?
puts user3.admin?
