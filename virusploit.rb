#!/usr/bin/ruby
require "colorize"

App_ROOT = File.dirname(__FILE__)
#require_relative 'data/exploit'
#require_relative 'data/payload'
#require_relative 'data/scanners/port_scanner'
require_relative 'lib/view_code'

logo = File.open("logo/1.txt")
puts logo.read.yellow

puts "1.".red + "View Exploit."
puts "2.".red + "Port Scanner."
puts "3.".red + "Fake Page Text Finder."
puts "4.".red + "About."
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

if recv == '3'
	system ("python data/scanners/FPTF.py")
end

if recv == '4'
	file = File.open("logo/about.txt")
	puts file.read.red
end