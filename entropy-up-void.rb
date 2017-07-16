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

print("Current entropy")
os.execute("cat /proc/sys/kernel/random/entropy_avail")
print("Do you allow me to install haveged for you?")
print("Enter if yes")
input = io.read
print("Installing haveged")
os.execute("sudo xbps-install haveged")
os.execute("sudo ln -s /etc/sv/haveged /var/service")
print("haveged installed")
print("Entropy should be going up")
print("Check out your entropy now")
print("Current entropy")
os.execute("cat /proc/sys/kernel/random/entropy_avail")
