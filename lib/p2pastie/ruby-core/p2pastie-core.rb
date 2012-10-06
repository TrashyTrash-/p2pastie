

# TODO -- 1 -- Build a ruby wrapper

# 1--- Multi-threaded worker queue
# 2--- 


require_relative './ruby-event-loop/event-loop'
require_relative './event-loop-wrapper'

class CoreUnit
  #getters and setters are done by attr_acessor
  attr_accessor :value
  #Object Contructor
  def initialize(value)
    @value = value
    @value ||= "oh noes"
  end
end



#EOF