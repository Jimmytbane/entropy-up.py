#!/usr/bin/ruby

=begin
    Copyright (C) <2017>  <jimmybot@teknik.io>

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published
    by the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.
=end

trap "SIGINT" do
  abort

puts "Current entropy"
system "cat /proc/sys/kernel/random/entropy_avail"
puts "Do you allow me to install haveged for you?"
puts "Enter if yes"
input = gets
puts "Installing haveged"
system "sudo xbps-install haveged"
system "sudo ln -s /etc/sv/haveged /var/service"
puts "haveged installed"
puts "Entropy should be going up"
puts "Check out your entropy now"
puts "Current entropy"
system "cat /proc/sys/kernel/random/entropy_avail"
