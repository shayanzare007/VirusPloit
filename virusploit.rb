#!/usr/bin/ruby
require "colorize"

App_ROOT = File.dirname(__FILE__)
#require_relative 'data/exploit'
#require_relative 'data/payload'
#require_relative 'data/scanners/port_scanner'
require_relative 'lib/view_code'

puts '''
          ViRuSSpLoIt   V 0.0.1

            Coded By Virus007

      Email : virus007@protonmail.com


'''.blue

puts "1.".red + "View Exploit."
puts "2.".red + "Port Scanner."
print "\nVsPl>".red
recv = gets.chomp

if recv == '1'
      #Craete a object of ViewCode class
      view_code  = ViewCode.new
end

if recv == '2'
	print "[+]".red + "Enter Ip :"
	ip = gets.chomp
	print "[+]".red + "Enter Range Of Port (Example: 1 100):"
	port = gets.chomp
	#run exploit
	system ("ruby" + " " + "data/scanners/port_scanner.rb" + " " + ip + " " + port)
end