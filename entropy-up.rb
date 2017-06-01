#!/usr/bin/ruby
system "clear"
puts "Current entropy"
system "cat /proc/sys/kernel/random/entropy_avail"
puts "Do you allow me to install haveged and rng-tools for you?"
puts "Enter if yes"
input = gets.chomp
puts "Installing haveged and rng-tools"
system "sudo apt install haveged rng-tools"
puts "^^^"
puts "Check for errors and report errors to jimmybot@tuta.io <3"
puts "Enter if no errors are present"
input = gets.chomp
system "clear"
puts "haveged and rng-tools installed"
puts "Entropy should be going up"
puts "Check out your entropy now"
puts "Current entropy"
system "cat /proc/sys/kernel/random/entropy_avail"