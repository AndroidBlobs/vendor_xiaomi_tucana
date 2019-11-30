#!/system/bin/sh
# Copyright (c) 2009-2015, The Linux Foundation. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * Neither the name of The Linux Foundation nor
#       the names of its contributors may be used to endorse or promote
#       products derived from this software without specific prior written
#       permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NON-INFRINGEMENT ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
# OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
# OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
# ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#

# Update the panel color property and Leds brightness
for i in $(seq 5); do
    if [ -f /sys/bus/i2c/devices/1-0049/panel_color ]; then
	# St
	color=`cat /sys/bus/i2c/devices/1-0049/panel_color`
	if [ -n "$color" ]; then
	    /system/bin/log -p i -t panel-info-sh Get panel_color successfully from 1-0049 $color
	    break
	else
	    /system/bin/log -p i -t panel-info-sh Get panel_color unsuccessfully, try again...
	    sleep 1
	    continue
	fi
	#Synaptics
    elif [ -f /sys/bus/i2c/devices/2-0020/panel_color ]; then
	color=`cat /sys/bus/i2c/devices/2-0020/panel_color`
	if [ -n "$color" ]; then
	    /system/bin/log -p i -t panel-info-sh Get panel_color successfully from 2-0020 $color
	    break
	else
	    /system/bin/log -p i -t panel-info-sh Get panel_color unsuccessfully, try again...
	    sleep 1
	    continue
	fi
	#Focal
    elif [ -f /sys/bus/i2c/devices/2-0038/panel_color ]; then
	color=`cat /sys/bus/i2c/devices/2-0038/panel_color`
	if [ -n "$color" ]; then
	    /system/bin/log -p i -t panel-info-sh Get panel_color successfully from 2-0038 $color
	    break
	else
	    /system/bin/log -p i -t panel-info-sh Get panel_color unsuccessfully, try again...
	    sleep 1
	    continue
	fi
	#Novatek
    elif [ -f /sys/bus/i2c/devices/2-0062/panel_color ]; then
        color=`cat /sys/bus/i2c/devices/2-0062/panel_color`
        if [ -n "$color" ]; then
            /system/bin/log -p i -t panel-info-sh Get panel_color successfully from 2-0062 $color
            break
        else
            /system/bin/log -p i -t panel-info-sh Get panel_color unsuccessfully, try again...
            sleep 1
            continue
        fi
	#Solomon
	elif [ -f /sys/bus/i2c/devices/2-004a/panel_color ]; then
	color=`cat /sys/bus/i2c/devices/2-004a/panel_color`
	if [ -n "$color" ]; then
	    /system/bin/log -p i -t panel-info-sh Get panel_color successfully from 2-004a $color
	    break
	else
	    /system/bin/log -p i -t panel-info-sh Get panel_color unsuccessfully, try again...
	    sleep 1
	    continue
	fi
	#Goodix
	elif [ -f /sys/bus/i2c/devices/1-005d/panel_color ]; then
	color=`cat /sys/bus/i2c/devices/1-005d/panel_color`
	if [ -n "$color" ]; then
	    /system/bin/log -p i -t panel-info-sh Get panel_color successfully from 1-005d $color
	    break
	else
	    /system/bin/log -p i -t panel-info-sh Get panel_color unsuccessfully, try again...
	    sleep 1
	    continue
	fi
    else
	color="0"
	/system/bin/log -p i -t panel-info-sh Get panel_color unsuccessfully, try again...
	sleep 1
    fi
done

for i in $(seq 5); do
    if [ -f /sys/bus/i2c/devices/1-0049/panel_vendor ]; then
	# St
	panel_vendor=`cat /sys/bus/i2c/devices/1-0049/panel_vendor`
	if [ -n "$panel_vendor" ]; then
	    /system/bin/log -p i -t panel-info-sh Get panel_vendor successfully from 1-0049 $panel_vendor
	    break
	else
	    /system/bin/log -p i -t panel-info-sh Get panel_vendor unsuccessfully, try again...
	    sleep 1
	    continue
	fi
	#Synaptics
    elif [ -f /sys/bus/i2c/devices/2-0020/panel_vendor ]; then
	panel_vendor=`cat /sys/bus/i2c/devices/2-0020/panel_vendor`
	if [ -n "$panel_vendor" ]; then
	    /system/bin/log -p i -t panel-info-sh Get panel_vendor successfully from 2-0020 $panel_vendor
	    break
	else
	    /system/bin/log -p i -t panel-info-sh Get panel_vendor unsuccessfully, try again...
	    sleep 1
	    continue
	fi
	#Focal
    elif [ -f /sys/bus/i2c/devices/2-0038/panel_vendor ]; then
	panel_vendor=`cat /sys/bus/i2c/devices/2-0038/panel_vendor`
	if [ -n "$panel_vendor" ]; then
	    /system/bin/log -p i -t panel-info-sh Get panel_vendor successfully from 2-0038 $panel_vendor
	    break
	else
	    /system/bin/log -p i -t panel-info-sh Get panel_vendor unsuccessfully, try again...
	    sleep 1
	    continue
	fi
	#Novatek
    elif [ -f /sys/bus/i2c/devices/2-0062/panel_vendor ]; then
        panel_vendor=`cat /sys/bus/i2c/devices/2-0062/panel_vendor`
        if [ -n "$panel_vendor" ]; then
            /system/bin/log -p i -t panel-info-sh Get panel_vendor successfully from 2-0062 $panel_vendor
            break
        else
            /system/bin/log -p i -t panel-info-sh Get panel_vendor unsuccessfully, try again...
            sleep 1
            continue
        fi
	#Solomon
	elif [ -f /sys/bus/i2c/devices/2-004a/panel_vendor ]; then
	    panel_vendor=`cat /sys/bus/i2c/devices/2-004a/panel_vendor`
	    if [ -n "$panel_vendor" ]; then
	        /system/bin/log -p i -t panel-info-sh Get panel_vendor successfully from 2-004a $panel_vendor
	        break
	    else
	        /system/bin/log -p i -t panel-info-sh Get panel_vendor unsuccessfully, try again...
	    sleep 1
	    continue
	fi
	#Goodix
	elif [ -f /sys/bus/i2c/devices/1-005d/panel_vendor ]; then
	    panel_vendor=`cat /sys/bus/i2c/devices/1-005d/panel_vendor`
	    if [ -n "$panel_vendor" ]; then
	        /system/bin/log -p i -t panel-info-sh Get panel_vendor successfully from 1-005d $panel_vendor
	        break
	    else
	        /system/bin/log -p i -t panel-info-sh Get panel_vendor unsuccessfully, try again...
	    sleep 1
	    continue
	fi
    else
	panel_vendor="0"
	/system/bin/log -p i -t panel-info-sh Get panel_vendor unsuccessfully, try again...
	sleep 1
    fi
done

for i in $(seq 5); do
    if [ -f /sys/bus/i2c/devices/1-0049/panel_display ]; then
	# St
	panel_display=`cat /sys/bus/i2c/devices/1-0049/panel_display`
	if [ -n "$panel_display" ]; then
	    /system/bin/log -p i -t panel-info-sh Get panel_display successfully from 1-0049 $panel_display
	    break
	else
	    /system/bin/log -p i -t panel-info-sh Get panel_display unsuccessfully, try again...
	    sleep 1
	    continue
	fi
	#Synaptics
    elif [ -f /sys/bus/i2c/devices/2-0020/panel_display ]; then
	panel_display=`cat /sys/bus/i2c/devices/2-0020/panel_display`
	if [ -n "$panel_display" ]; then
	    /system/bin/log -p i -t panel-info-sh Get panel_display successfully from 2-0020 $panel_display
	    break
	else
	    /system/bin/log -p i -t panel-info-sh Get panel_display unsuccessfully, try again...
	    sleep 1
	    continue
	fi
	#Focal
    elif [ -f /sys/bus/i2c/devices/2-0038/panel_display ]; then
	panel_display=`cat /sys/bus/i2c/devices/2-0038/panel_display`
	if [ -n "$panel_display" ]; then
	    /system/bin/log -p i -t panel-info-sh Get panel_display successfully from 2-0038 $panel_display
	    break
	else
	    /system/bin/log -p i -t panel-info-sh Get panel_display unsuccessfully, try again...
	    sleep 1
	    continue
	fi
	#Novatek
    elif [ -f /sys/bus/i2c/devices/2-0062/panel_display ]; then
        panel_display=`cat /sys/bus/i2c/devices/2-0062/panel_display`
        if [ -n "$panel_display" ]; then
            /system/bin/log -p i -t panel-info-sh Get panel_display successfully from 2-0062 $panel_display
            break
        else
            /system/bin/log -p i -t panel-info-sh Get panel_display unsuccessfully, try again...
            sleep 1
            continue
        fi
	#Solomon
	elif [ -f /sys/bus/i2c/devices/2-004a/panel_display ]; then
	    panel_display=`cat /sys/bus/i2c/devices/2-004a/panel_display`
	    if [ -n "$panel_display" ]; then
	        /system/bin/log -p i -t panel-info-sh Get panel_display successfully from 2-004a $panel_display
	        break
	    else
	        /system/bin/log -p i -t panel-info-sh Get panel_display unsuccessfully, try again...
	    sleep 1
	    continue
	fi
	#Goodix
	elif [ -f /sys/bus/i2c/devices/1-005d/panel_display ]; then
	    panel_display=`cat /sys/bus/i2c/devices/1-005d/panel_display`
	    if [ -n "$panel_display" ]; then
	        /system/bin/log -p i -t panel-info-sh Get panel_display successfully from 1-005d $panel_display
	        break
	    else
	        /system/bin/log -p i -t panel-info-sh Get panel_display unsuccessfully, try again...
	    sleep 1
	    continue
	fi
    else
	panel_display=""
	/system/bin/log -p i -t panel-info-sh Get panel_display unsuccessfully, try again...
	sleep 1
    fi
done

for i in $(seq 5); do
        if [ -f /sys/class/touch/touch_dev/touch_vendor ]; then
		touch_vendor=`cat /sys/class/touch/touch_dev/touch_vendor`
		if [ -n "$touch_vendor" ]; then
			/system/bin/log -p i -t panel-info-sh Get touch_vendor successfully from $touch_vendor
			break;
		else
			/system/bin/log -p i -t panel-info-sh Get touch_vendor unsuccessfully, try again...
		        sleep 1
			continue
		fi
	else
		touch_vendor="0"
		/system/bin/log -p i -t panel-info-sh Get touch_vendor unsuccessfully, try again...
		sleep 1
	fi
done

case "$color" in
    "1")
        setprop sys.panel.color WHITE
        ;;
    "2")
        setprop sys.panel.color BLACK
        ;;
    "3")
        setprop sys.panel.color RED
        ;;
    "4")
        setprop sys.panel.color YELLOW
        ;;
    "5")
        setprop sys.panel.color GREEN
        ;;
    "6")
        setprop sys.panel.color PINK
        ;;
    "7")
        setprop sys.panel.color PURPLE
        ;;
    "8")
        setprop sys.panel.color GOLDEN
        ;;
    "9")
        setprop sys.panel.color SLIVER
        ;;
    "@")
        setprop sys.panel.color GRAY
        ;;
    "A")
        setprop sys.panel.color SLIVER_BLUE
        ;;
    "B")
        setprop sys.panel.color CORAL_BLUE
        ;;
    *)
        setprop sys.panel.color UNKNOWN
        ;;
esac
case "$panel_vendor" in
    "1")
        setprop sys.panel.vendor 1
        ;;
    "2")
        setprop sys.panel.vendor 2
        ;;
    "3")
        setprop sys.panel.vendor 3
        ;;
    "4")
        setprop sys.panel.vendor 4
        ;;
    "5")
        setprop sys.panel.vendor 5
        ;;
    "6")
        setprop sys.panel.vendor 6
        ;;
    "7")
        setprop sys.panel.vendor 7
        ;;
    "8")
        setprop sys.panel.vendor 8
        ;;
    "9")
        setprop sys.panel.vendor 9
		;;
    "@")
        setprop sys.panel.vendor 10
        ;;
    "A")
        setprop sys.panel.vendor 11
        ;;
    "B")
        setprop sys.panel.vendor 12
        ;;
    "C")
        setprop sys.panel.vendor 13
        ;;
    "D")
        setprop sys.panel.vendor 14
        ;;
    "E")
        setprop sys.panel.vendor 15
        ;;
    "F")
        setprop sys.panel.vendor 16
        ;;
    "G")
        setprop sys.panel.vendor 17
        ;;
    "H")
        setprop sys.panel.vendor 18
        ;;
    "I")
        setprop sys.panel.vendor 19
        ;;
    "P")
        setprop sys.panel.vendor 20
        ;;
    "Q")
        setprop sys.panel.vendor 21
        ;;
    "R")
        setprop sys.panel.vendor 22
        ;;
    *)
        setprop sys.panel.vendor UNKNOWN
        ;;
esac
case "$panel_display" in
    "1")
        setprop sys.panel.display 1
        ;;
    "2")
        setprop sys.panel.display 2
        ;;
    "3")
        setprop sys.panel.display 3
        ;;
    "4")
        setprop sys.panel.display 4
        ;;
    "5")
        setprop sys.panel.display 5
        ;;
    "6")
        setprop sys.panel.display 6
        ;;
    "7")
        setprop sys.panel.display 7
        ;;
    "8")
        setprop sys.panel.display 8
        ;;
    "9")
        setprop sys.panel.display 9
		;;
    "@")
        setprop sys.panel.display 10
        ;;
    "A")
        setprop sys.panel.display 11
        ;;
    "B")
        setprop sys.panel.display 12
        ;;
    *)
        setprop sys.panel.display UNKNOWN
        ;;
esac
case "$touch_vendor" in
    "1")
        setprop sys.panel.touch_vendor 1
        ;;
    "2")
        setprop sys.panel.touch_vendor 2
        ;;
    "3")
        setprop sys.panel.touch_vendor 3
        ;;
    "4")
        setprop sys.panel.touch_vendor 4
        ;;
    *)
        setprop sys.panel.touch_vendor UNKNOWN
        ;;
esac
