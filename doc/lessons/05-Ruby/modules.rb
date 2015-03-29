require 'pry'

class Computer
  attr_accessor :processor, :ram, :dvd

  def initialize(processor, ram, dvd = nil)
    @processor = processor
    @ram = ram
    @dvd = dvd
  end
end

module Upgrade
  def to_i5
    @processor = :i5
  end
end


comp = Computer.new(:celeron, 8)
comp1 = Computer.new(:celeron, 8, :'LG 16x')

comp.extend Upgrade
comp.to_i5

class Computer
  include Upgrade
end

module Upgrade

  def self.upgradable?(processor1, processor2)
    processor1.to_s[0] == processor2.to_s[0]
  end

end

p Upgrade.upgradable?(:celeron, :i5)
p Upgrade.upgradable?(:i3, :i5)
