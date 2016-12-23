#!/usr/bin/ruby

require "colorize"
require_relative 'use'

class Select
	def initialize()
		loop {
			print "> "
			input = gets.chomp

			if input == "info"
				info
			end
		}
	end
	
end