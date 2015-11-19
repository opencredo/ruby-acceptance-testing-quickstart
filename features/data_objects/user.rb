require 'ffaker'

class User
  attr_accessor :first_name
  attr_accessor :last_name

  def initialize
    @first_name = FFaker::Name.first_name
    @last_name = FFaker::Name.last_name
  end

  def name
    @first_name + ' ' + @last_name
  end
end
