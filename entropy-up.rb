#!/usr/bin/ruby
system "clear"
puts "Current entropy"
system "cat /proc/sys/kernel/random/entropy_avail"
puts "Do you allow me to install haveged and rng-tools for you?"
puts "Please enter any character and enter"
input = gets.chomp
puts "Installing haveged and rng-tools"
system "sudo apt install haveged rng-tools"
puts "If the syntax was incorrect, or another error occured, this is to give you a chance to see it."
puts "Please enter any character and enter"
input = gets.chomp
system "clear"
puts "haveged and rng-tools installed"
puts "Entropy should be going up"
puts "Check out your entropy now"
puts "Current entropy"
system "cat /proc/sys/kernel/random/entropy_avail"