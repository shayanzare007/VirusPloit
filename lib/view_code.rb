#!/usr/bin/ruby
#
# => This libery for view your code in VirusSploit console
#
require "colorize"

class ViewCode
  def initialize
    puts "[+]".red + " Chose your editor for view your code :\n"
    puts "1.".blue + "Vim(if installed)."
    puts "2.".blue + "Nano(only linux)."
    puts "3.".blue + "Notepad(only windows)."
    puts "4.".blue + "Virus_view_code(only linux)."
    print "> "
    input = gets.chomp

    #recive file directory
    #@file_dir = "C:/Users/Shayan.Z/Desktop/Virusploit/"
    print "[+]".red + "Enter Exploit Directory: "
    @file_dir = gets.chomp
    #@name_file = "virusploit.rb"
    print "[+]".red + "Enter Exploit Name (Example : exploit.rb): "
    @name_file = gets.chomp

    if input == '1'
      vim
    elsif input == '2'
      nano
    elsif input == '3'
      notepad
    elsif input == '4'
      virus_view_code
    end
    #file = File.open(@file_dir, 'r')
  end

  def vim
      system("vim " + @name_file)
  end

  def nano
    system("nano " + @name_file)
  end

  def notepad
    #system ("cd " + @file_dir)
    system ("notepad " + @name_file)
  end

  def virus_view_code
    system ("cat " + @name_file)
  end
end
