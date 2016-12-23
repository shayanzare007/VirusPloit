#!/usr/bin/ruby
require "colorize"

App_ROOT = File.dirname(__FILE__)
#require_relative 'data/exploit'
#require_relative 'data/payload'
#require_relative 'data/scanners/port_scanner'
require_relative 'lib/view_code'
require_relative 'lib/use'

logo = File.open(".logo/1.txt")
puts logo.read.yellow

puts "1.".red + "Port Scanner."
puts "2.".red + "Fake Page Text Finder."
puts "3.".red + "About."

#create loop for dont exit the program
loop {
	print "\nVsPl>".red
	recv = gets.chomp

	if recv == '1'
		print "[+]".red + "Enter Ip :"
		ip = gets.chomp
		print "[+]".red + "Enter Range Of Port (Example: 1 100):"
		port = gets.chomp
		#run exploit
		system ("ruby" + " " + "data/scanners/port_scanner.rb" + " " + ip + " " + port)
	end

	if recv == '2'
		system ("python data/scanners/FPTF.py")
	end

	if recv == '3'
		file = File.open(".logo/about.txt")
		puts file.read.red
	end

	if recv == 'use'
		use = Use.new
	end

}
