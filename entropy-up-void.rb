#!/usr/bin/ruby
#    Copyright (C) <2017>  <jimmybot@tuta.io (jimmybot@riseup.net) PGP key: "374C C0C2 9153 8F0E F877  D8F6 B0A8 8E2F DECC DEE1">
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU Affero General Public License as published
#    by the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU Affero General Public License for more details.
#
#    You should have received a copy of the GNU Affero General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
system "clear"
puts "Current entropy"
system "cat /proc/sys/kernel/random/entropy_avail"
puts "Do you allow me to install haveged for you?"
puts "Enter if yes"
input = gets.chomp
puts "Installing haveged"
puts "vvv"
system "sudo xbps-install haveged"
puts "^^^"
puts "Check for errors and report errors to jimmybot@tuta.io <3"
puts "Enter if no errors are present"
input = gets.chomp
system "clear"
puts "haveged and rng-tools installed"
puts "Entropy should be going up"
puts "Check out your entropy now"
puts "Current entropy"
system "cat /proc/sys/kernel/random/entropy_avail".chomp
