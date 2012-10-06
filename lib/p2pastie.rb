require 'yaml'
require 'fileutils'

require_relative './p2pastie/version'

class P2pastie
  #getters and setters are done by attr_acessor
  attr_accessor :value
  #Object Contructor
  def initialize(value)
    @value = value
    @value ||= "oh noes"
  end
end

class node

	def initialize()

		#Start node



		#Start (server side)


		#Start (client side)



	end

end

class PastieCore

	def initialize()

		#Start multi-threaded environment

	end

end




=begin
  references:
    http://en.wikipedia.org/wiki/Chord_%28peer-to-peer%29
=end