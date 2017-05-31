#!/usr/bin/ruby
system "clear"
puts "Current entropy"
system "cat /proc/sys/kernel/random/entropy_avail"
puts nil
puts "Installing haveged and rng-tools"
system "sudo su"
system "apt install haveged rng-tools"
system "exit"