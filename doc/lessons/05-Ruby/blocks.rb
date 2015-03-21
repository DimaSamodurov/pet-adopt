class Home

  def initialize
    @a = 10
  end

  def close_the_door(action1=nil, action2=nil, &my_chunk_of_code)
    puts 'Ok, closed'
    my_chunk_of_code.call if block_given?
  end
end

home = Home.new

home.close_the_door

a1 = ''
a2 = ''

home.close_the_door(a2, a1) do
  puts 'check_fridge'
  puts 'turn_on_alarm_system'
  puts 'turn_off_light'
end

home.close_the_door do
  puts 'yohoo! go to bar'
end
