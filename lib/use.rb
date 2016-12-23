#!/usr/bin/ruby

require "colorize"
require_relative 'view_code'
require_relative 'select'

class Use
  def initialize()
    system("pwd")
    print "[+] ".red + "Enter The File Directory : "
    @file = gets.chomp
    f = File.open(@file)
    #test for founding file
    if !f
        puts "[!] File is not found!"
      else
        puts "[*] File Opened!".blue
        puts "[+] " + @file + " Selected!".red
        sel = Select.new
    end
  end

  def read
    view = ViewCode.new
  end

end
