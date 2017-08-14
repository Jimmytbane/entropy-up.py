#!/usr/bin/env python


def entropyup():

    import os

    """ This was NEVER tested """

    """ 
    This module helps the user increase their entropy on an
    apt based machine by installing haveged
    """

    """
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
    """

    entropy_1 = os.popen("cat /proc/sys/kernel/random/entropy_avail").read()
    print("Current entropy -->   %s" % entropy_1)
    print("Do you allow me to install haveged for you?")
    input("Enter if yes")
    print("Installing haveged")
    os.system("system 'sudo apt install haveged'")
    print("haveged installed")
    print("Entropy should be going up")
    print("Check out your entropy now")
    entropy_2 = os.popen("cat /proc/sys/kernel/random/entropy_avail").read()
    print("Current entropy -->   %s" % entropy_2)
    return entropyup

entropyup = entropyup()