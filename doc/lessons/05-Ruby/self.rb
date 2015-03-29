require 'pry'

class Smartsoft

  def self.upgrade(comp)
    comp.memory += 16
  end

end


class Computer
  attr_accessor :processor, :memory

  def initialize
    @processor = 'celeron'
    @memory = 4
  end

  def upgrade(proc)
    @processor = proc
    Smartsoft.upgrade(self)
  end

  def to_s
    "PC processor #{@processor}, memory #{@memory}"
  end

end

mypc = Computer.new
mypc.upgrade('i9')
puts mypc.to_s

