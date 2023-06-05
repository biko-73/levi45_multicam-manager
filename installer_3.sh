#!/bin/sh

# ==============================================
# SCRIPT : DOWNLOAD AND INSTALL levi45_multicam-manager #
# =================================================================================================================
# Command: wget https://raw.githubusercontent.com/biko-73/levi45_multicam-manager/main/installer_3.sh -O - | /bin/sh
# =================================================================================================================

LINE="======================================================================="
######### checking Package: libssl & libcrypto ###########
if [ -f /etc/apt/apt.conf ] ; then
    images="OE2.5 IMAGES:"
    lib_files="/var/lib/dpkg/status"
    list_files="/var/lib/dpkg/info"
elif [ -f /etc/opkg/opkg.conf ] ; then
    images="OE2.0 IMAGES:"
    lib_files="/var/lib/opkg/status"
    list_files="/var/lib/opkg/info"
else
    echo "Sorry, your device not have the opkg/dpkg folder :("
fi
usrlibpath="/usr/lib/"
libpath="/lib/"
if [ -d "/etc/tuxbox/config" ] ; then
    mv /etc/tuxbox/config /etc/tuxbox/config_backup > /dev/null 2>&1
fi
opkg remove enigma2-plugin-softcams-ncam-mips > /dev/null 2>&1
if [ -d "/etc/tuxbox/config_backup" ] ; then
    mv /etc/tuxbox/config_backup /etc/tuxbox/config > /dev/null 2>&1
fi
sleep 3
opkg update > /dev/null 2>&1
############################## libssl ####################
if grep -qs 'Package: libssl3' cat $lib_files ; then
    echo "$images libssl3"
    ln -s libssl.so.3 $usrlibpath/libssl.so.1.1 > /dev/null 2>&1
    ln -s libssl.so.3 $usrlibpath/libssl.so.1.0.0 > /dev/null 2>&1
    ln -s libssl.so.3 $usrlibpath/libssl.so.0.9.8 > /dev/null 2>&1
    ln -s libssl.so.3 $usrlibpath/libssl.so.0.9.7 > /dev/null 2>&1
    ln -s $usrlibpath/libssl.so.3 $libpath/libssl.so.1.1 > /dev/null 2>&1
    ln -s $usrlibpath/libssl.so.3 $libpath/libssl.so.1.0.0 > /dev/null 2>&1
    ln -s $usrlibpath/libssl.so.3 $libpath/libssl.so.0.9.8 > /dev/null 2>&1
    ln -s $usrlibpath/libssl.so.3 $libpath/libssl.so.0.9.7 > /dev/null 2>&1
elif grep -qs 'Package: libssl1.1' cat $lib_files ; then
    echo "$images libssl1.1"
    ln -s libssl.so.1.1 $usrlibpath/libssl.so.1.0.0 > /dev/null 2>&1
    ln -s libssl.so.1.1 $usrlibpath/libssl.so.0.9.8 > /dev/null 2>&1
    ln -s libssl.so.1.1 $usrlibpath/libssl.so.0.9.7 > /dev/null 2>&1
    ln -s $usrlibpath/libssl.so.1.1 $libpath/libssl.so.1.0.0 > /dev/null 2>&1
    ln -s $usrlibpath/libssl.so.1.1 $libpath/libssl.so.0.9.8 > /dev/null 2>&1
    ln -s $usrlibpath/libssl.so.1.1 $libpath/libssl.so.0.9.7 > /dev/null 2>&1
elif grep -qs 'Package: libssl1.0.0' cat $lib_files ; then
    echo "$images libssl.1.0.0"
    ln -s libssl.so.1.0.0 $usrlibpath/libssl.so.0.9.8 > /dev/null 2>&1
    ln -s libssl.so.1.0.0 $usrlibpath/libssl.so.0.9.7 > /dev/null 2>&1
    ln -s $usrlibpath/libssl.so.1.0.0 $libpath/libssl.so.0.9.8 > /dev/null 2>&1
    ln -s $usrlibpath/libssl.so.1.0.0 $libpath/libssl.so.0.9.7 > /dev/null 2>&1
elif grep -qs 'Package: libssl1.0.2' cat $lib_files ; then
    echo "$images libssl.1.0.2"
    ln -s libssl.so.1.0.2 $usrlibpath/libssl.so.1.0.0 > /dev/null 2>&1
    ln -s libssl.so.1.0.2 $usrlibpath/libssl.so.0.9.8 > /dev/null 2>&1
    ln -s libssl.so.1.0.2 $usrlibpath/libssl.so.0.9.7 > /dev/null 2>&1
    ln -s $usrlibpath/libssl.so.1.0.2 $libpath/libssl.so.1.0.0 > /dev/null 2>&1
    ln -s $usrlibpath/libssl.so.1.0.2 $libpath/libssl.so.0.9.8 > /dev/null 2>&1
    ln -s $usrlibpath/libssl.so.1.0.2 $libpath/libssl.so.0.9.7 > /dev/null 2>&1
elif grep -qs 'Package: libssl0.9.8' cat $lib_files ; then
    echo "$images libssl.0.9.8"
    ln -s libssl.so.0.9.8 $usrlibpath/libssl.so.0.9.7 > /dev/null 2>&1
    ln -s libssl.so.0.9.8 $usrlibpath/libssl.so.1.0.0 > /dev/null 2>&1
    ln -s $usrlibpath/libssl.so.0.9.8 $libpath/libssl.so.0.9.7 > /dev/null 2>&1
    ln -s $usrlibpath/libssl.so.0.9.8 $libpath/libssl.so.1.0.0 > /dev/null 2>&1
elif [ -f /usr/lib/libssl.so.3 ] ; then
    echo "$images libssl3"
    ln -s libssl.so.3 $usrlibpath/libssl.so.1.1 > /dev/null 2>&1
    ln -s libssl.so.3 $usrlibpath/libssl.so.1.0.0 > /dev/null 2>&1
    ln -s libssl.so.3 $usrlibpath/libssl.so.0.9.8 > /dev/null 2>&1
    ln -s libssl.so.3 $usrlibpath/libssl.so.0.9.7 > /dev/null 2>&1
    ln -s $usrlibpath/libssl.so.3 $libpath/libssl.so.1.1 > /dev/null 2>&1
    ln -s $usrlibpath/libssl.so.3 $libpath/libssl.so.1.0.0 > /dev/null 2>&1
    ln -s $usrlibpath/libssl.so.3 $libpath/libssl.so.0.9.8 > /dev/null 2>&1
    ln -s $usrlibpath/libssl.so.3 $libpath/libssl.so.0.9.7 > /dev/null 2>&1
elif [ -f /usr/lib/libssl.so.1.1 ] ; then
    echo "$images libssl1.1"
    ln -s libssl.so.1.1 $usrlibpath/libssl.so.1.0.0 > /dev/null 2>&1
    ln -s libssl.so.1.1 $usrlibpath/libssl.so.0.9.8 > /dev/null 2>&1
    ln -s libssl.so.1.1 $usrlibpath/libssl.so.0.9.7 > /dev/null 2>&1
    ln -s $usrlibpath/libssl.so.1.1 $libpath/libssl.so.1.0.0 > /dev/null 2>&1
    ln -s $usrlibpath/libssl.so.1.1 $libpath/libssl.so.0.9.8 > /dev/null 2>&1
    ln -s $usrlibpath/libssl.so.1.1 $libpath/libssl.so.0.9.7 > /dev/null 2>&1
elif [ -f /usr/lib/libssl.so.1.0.0 ] ; then
    echo "$images libssl1.0"
    ln -s libssl.so.1.0.0 $usrlibpath/libssl.so.0.9.8 > /dev/null 2>&1
    ln -s libssl.so.1.0.0 $usrlibpath/libssl.so.0.9.7 > /dev/null 2>&1
    ln -s $usrlibpath/libssl.so.1.0.0 $libpath/libssl.so.0.9.8 > /dev/null 2>&1
    ln -s $usrlibpath/libssl.so.1.0.0 $libpath/libssl.so.0.9.7 > /dev/null 2>&1
elif [ -f /usr/lib/libssl.so.1.0.2 ] ; then
    echo "$images libssl.1.0.2"
    ln -s libssl.so.1.0.2 $usrlibpath/libssl.so.1.0.0 > /dev/null 2>&1
    ln -s libssl.so.1.0.2 $usrlibpath/libssl.so.0.9.8 > /dev/null 2>&1
    ln -s libssl.so.1.0.2 $usrlibpath/libssl.so.0.9.7 > /dev/null 2>&1
    ln -s $usrlibpath/libssl.so.1.0.2 $libpath/libssl.so.1.0.0 > /dev/null 2>&1
    ln -s $usrlibpath/libssl.so.1.0.2 $libpath/libssl.so.0.9.8 > /dev/null 2>&1
    ln -s $usrlibpath/libssl.so.1.0.2 $libpath/libssl.so.0.9.7 > /dev/null 2>&1
elif [ -f /usr/lib/libssl.so.0.9.8 ] ; then
    echo "$images libssl.0.9.8"
    ln -s libssl.so.0.9.8 $usrlibpath/libssl.so.0.9.7 > /dev/null 2>&1
    ln -s libssl.so.0.9.8 $usrlibpath/libssl.so.1.0.0 > /dev/null 2>&1
    ln -s $usrlibpath/libssl.so.0.9.8 $libpath/libssl.so.0.9.7 > /dev/null 2>&1
    ln -s $usrlibpath/libssl.so.0.9.8 $libpath/libssl.so.1.0.0 > /dev/null 2>&1
else ## Try to Download libssl from feed
    if [ -n "$(opkg list | grep libssl3)" ]; then
        echo "install libssl3"
        if [ -f /etc/apt/apt.conf ] ; then
            apt-get install --reinstall libssl3 > /dev/null 2>&1
            ln -s libssl.so.3 $usrlibpath/libssl.so.1.1 > /dev/null 2>&1
            ln -s libssl.so.3 $usrlibpath/libssl.so.1.0.0 > /dev/null 2>&1
            ln -s libssl.so.3 $usrlibpath/libssl.so.0.9.8 > /dev/null 2>&1
            ln -s libssl.so.3 $usrlibpath/libssl.so.0.9.7 > /dev/null 2>&1
            ln -s $usrlibpath/libssl.so.3 $libpath/libssl.so.1.1 > /dev/null 2>&1
            ln -s $usrlibpath/libssl.so.3 $libpath/libssl.so.1.0.0 > /dev/null 2>&1
            ln -s $usrlibpath/libssl.so.3 $libpath/libssl.so.0.9.8 > /dev/null 2>&1
            ln -s $usrlibpath/libssl.so.3 $libpath/libssl.so.0.9.7 > /dev/null 2>&1
        elif [ -f /etc/opkg/opkg.conf ] ; then
            opkg install --force-overwrite --force-depends libssl3 > /dev/null
            ln -s libssl.so.3 $usrlibpath/libssl.so.1.1 > /dev/null 2>&1
            ln -s libssl.so.3 $usrlibpath/libssl.so.1.0.0 > /dev/null 2>&1
            ln -s libssl.so.3 $usrlibpath/libssl.so.0.9.8 > /dev/null 2>&1
            ln -s libssl.so.3 $usrlibpath/libssl.so.0.9.7 > /dev/null 2>&1
            ln -s $usrlibpath/libssl.so.3 $libpath/libssl.so.1.1 > /dev/null 2>&1
            ln -s $usrlibpath/libssl.so.3 $libpath/libssl.so.1.0.0 > /dev/null 2>&1
            ln -s $usrlibpath/libssl.so.3 $libpath/libssl.so.0.9.8 > /dev/null 2>&1
            ln -s $usrlibpath/libssl.so.3 $libpath/libssl.so.0.9.7 > /dev/null 2>&1
        fi
    elif [ -n "$(opkg list | grep libssl1.1)" ]; then
        echo "install libssl1.1"
        if [ -f /etc/apt/apt.conf ] ; then
            apt-get install --reinstall libssl1.1 > /dev/null 2>&1
            ln -s libssl.so.1.1 $usrlibpath/libssl.so.1.0.0 > /dev/null 2>&1
            ln -s libssl.so.1.1 $usrlibpath/libssl.so.0.9.8 > /dev/null 2>&1
            ln -s libssl.so.1.1 $usrlibpath/libssl.so.0.9.7 > /dev/null 2>&1
            ln -s $usrlibpath/libssl.so.1.1 $libpath/libssl.so.1.0.0 > /dev/null 2>&1
            ln -s $usrlibpath/libssl.so.1.1 $libpath/libssl.so.0.9.8 > /dev/null 2>&1
            ln -s $usrlibpath/libssl.so.1.1 $libpath/libssl.so.0.9.7 > /dev/null 2>&1
        elif [ -f /etc/opkg/opkg.conf ] ; then
            opkg install --force-overwrite --force-depends libssl1.1 > /dev/null
            ln -s libssl.so.1.1 $usrlibpath/libssl.so.1.0.0 > /dev/null 2>&1
            ln -s libssl.so.1.1 $usrlibpath/libssl.so.0.9.8 > /dev/null 2>&1
            ln -s libssl.so.1.1 $usrlibpath/libssl.so.0.9.7 > /dev/null 2>&1
            ln -s $usrlibpath/libssl.so.1.1 $libpath/libssl.so.1.0.0 > /dev/null 2>&1
            ln -s $usrlibpath/libssl.so.1.1 $libpath/libssl.so.0.9.8 > /dev/null 2>&1
            ln -s $usrlibpath/libssl.so.1.1 $libpath/libssl.so.0.9.7 > /dev/null 2>&1
        fi
    elif [ -n "$(opkg list | grep libssl1.0.2)" ]; then
        echo "install libssl1.0.2"
        if [ -f /etc/apt/apt.conf ] ; then
            apt-get install --reinstall libssl1.0.2 > /dev/null 2>&1
            ln -s libssl.so.1.0.2 $usrlibpath/libssl.so.1.0.0 > /dev/null 2>&1
            ln -s libssl.so.1.0.2 $usrlibpath/libssl.so.0.9.8 > /dev/null 2>&1
            ln -s libssl.so.1.0.2 $usrlibpath/libssl.so.0.9.7 > /dev/null 2>&1
            ln -s $usrlibpath/libssl.so.1.0.2 $libpath/libssl.so.1.0.0 > /dev/null 2>&1
            ln -s $usrlibpath/libssl.so.1.0.2 $libpath/libssl.so.0.9.8 > /dev/null 2>&1
            ln -s $usrlibpath/libssl.so.1.0.2 $libpath/libssl.so.0.9.7 > /dev/null 2>&1
        elif [ -f /etc/opkg/opkg.conf ] ; then
            opkg install --force-overwrite --force-depends libssl1.0.2 > /dev/null
            ln -s libssl.so.1.0.2 $usrlibpath/libssl.so.1.0.0 > /dev/null 2>&1
            ln -s libssl.so.1.0.2 $usrlibpath/libssl.so.0.9.8 > /dev/null 2>&1
            ln -s libssl.so.1.0.2 $usrlibpath/libssl.so.0.9.7 > /dev/null 2>&1
            ln -s $usrlibpath/libssl.so.1.0.2 $libpath/libssl.so.1.0.0 > /dev/null 2>&1
            ln -s $usrlibpath/libssl.so.1.0.2 $libpath/libssl.so.0.9.8 > /dev/null 2>&1
            ln -s $usrlibpath/libssl.so.1.0.2 $libpath/libssl.so.0.9.7 > /dev/null 2>&1
        fi
    elif [ -n "$(opkg list | grep libssl1.0.0)" ]; then
        echo "install libssl1.0.0"
        if [ -f /etc/apt/apt.conf ] ; then
            apt-get install --reinstall libssl1.0.0 > /dev/null 2>&1
            ln -s libssl.so.1.0.0 $usrlibpath/libssl.so.0.9.8 > /dev/null 2>&1
            ln -s libssl.so.1.0.0 $usrlibpath/libssl.so.0.9.7 > /dev/null 2>&1
            ln -s $usrlibpath/libssl.so.1.0.0 $libpath/libssl.so.0.9.8 > /dev/null 2>&1
            ln -s $usrlibpath/libssl.so.1.0.0 $libpath/libssl.so.0.9.7 > /dev/null 2>&1
        elif [ -f /etc/opkg/opkg.conf ] ; then
            opkg install --force-overwrite --force-depends libssl1.0.0 > /dev/null
            ln -s libssl.so.1.0.0 $usrlibpath/libssl.so.0.9.8 > /dev/null 2>&1
            ln -s libssl.so.1.0.0 $usrlibpath/libssl.so.0.9.7 > /dev/null 2>&1
            ln -s $usrlibpath/libssl.so.1.0.0 $libpath/libssl.so.0.9.8 > /dev/null 2>&1
            ln -s $usrlibpath/libssl.so.1.0.0 $libpath/libssl.so.0.9.7 > /dev/null 2>&1
        fi
    elif [ -n "$(opkg list | grep libssl0.9.8)" ]; then
        echo "install libssl0.9.8"
        if [ -f /etc/apt/apt.conf ] ; then
            apt-get install --reinstall libssl0.9.8 > /dev/null 2>&1
            ln -s libssl.so.0.9.8 $usrlibpath/libssl.so.0.9.7 > /dev/null 2>&1
            ln -s libssl.so.0.9.8 $usrlibpath/libssl.so.1.0.0 > /dev/null 2>&1
            ln -s $usrlibpath/libssl.so.0.9.8 $libpath/libssl.so.0.9.7 > /dev/null 2>&1
            ln -s $usrlibpath/libssl.so.0.9.8 $libpath/libssl.so.1.0.0 > /dev/null 2>&1
        elif [ -f /etc/opkg/opkg.conf ] ; then
            opkg install --force-overwrite --force-depends libssl0.9.8 > /dev/null 2>&1
            ln -s libssl.so.0.9.8 $usrlibpath/libssl.so.0.9.7 > /dev/null 2>&1
            ln -s libssl.so.0.9.8 $usrlibpath/libssl.so.1.0.0 > /dev/null 2>&1
            ln -s $usrlibpath/libssl.so.0.9.8 $libpath/libssl.so.0.9.7 > /dev/null 2>&1
            ln -s $usrlibpath/libssl.so.0.9.8 $libpath/libssl.so.1.0.0 > /dev/null 2>&1
        fi
    else
        echo $LINE
        echo "ERROR: The libsslx.x.x file could not be loaded from the repository."
        echo $LINE
        exit 1
    fi
fi
############################## libcrypto ####################
if grep -qs 'Package: libcrypto3' cat $lib_files ; then
    echo "$images libcrypto3"
    ln -s libcrypto.so.3 $usrlibpath/libcrypto.so.1.1 > /dev/null 2>&1
    ln -s libcrypto.so.3 $usrlibpath/libcrypto.so.1.0.0 > /dev/null 2>&1
    ln -s libcrypto.so.3 $usrlibpath/libcrypto.so.0.9.8 > /dev/null 2>&1
    ln -s libcrypto.so.3 $usrlibpath/libcrypto.so.0.9.7 > /dev/null 2>&1
    ln -s $usrlibpath/libcrypto.so.3 $libpath/libcrypto.so.1.1 > /dev/null 2>&1
    ln -s $usrlibpath/libcrypto.so.3 $libpath/libcrypto.so.1.0.0 > /dev/null 2>&1
    ln -s $usrlibpath/libcrypto.so.3 $libpath/libcrypto.so.0.9.8 > /dev/null 2>&1
    ln -s $usrlibpath/libcrypto.so.3 $libpath/libcrypto.so.0.9.7 > /dev/null 2>&1
elif grep -qs 'Package: libcrypto1.1' cat $lib_files ; then
    echo "$images libcrypto1.1"
    ln -s libcrypto.so.1.1 $usrlibpath/libcrypto.so.1.0.0 > /dev/null 2>&1
    ln -s libcrypto.so.1.1 $usrlibpath/libcrypto.so.0.9.8 > /dev/null 2>&1
    ln -s libcrypto.so.1.1 $usrlibpath/libcrypto.so.0.9.7 > /dev/null 2>&1
    ln -s $usrlibpath/libcrypto.so.1.1 $libpath/libcrypto.so.1.0.0 > /dev/null 2>&1
    ln -s $usrlibpath/libcrypto.so.1.1 $libpath/libcrypto.so.0.9.8 > /dev/null 2>&1
    ln -s $usrlibpath/libcrypto.so.1.1 $libpath/libcrypto.so.0.9.7 > /dev/null 2>&1
elif grep -qs 'Package: libcrypto1.0.0' cat $lib_files ; then
    echo "$images libcrypto.1.0.0"
    ln -s libcrypto.so.1.0.0 $usrlibpath/libcrypto.so.0.9.8 > /dev/null 2>&1
    ln -s libcrypto.so.1.0.0 $usrlibpath/libcrypto.so.0.9.7 > /dev/null 2>&1
    ln -s $usrlibpath/libcrypto.so.1.0.0 $libpath/libcrypto.so.0.9.8 > /dev/null 2>&1
    ln -s $usrlibpath/libcrypto.so.1.0.0 $libpath/libcrypto.so.0.9.7 > /dev/null 2>&1
elif grep -qs 'Package: libcrypto1.0.2' cat $lib_files ; then
    echo "$images libcrypto.1.0.2"
    ln -s libcrypto.so.1.0.2 $usrlibpath/libcrypto.so.1.0.0 > /dev/null 2>&1
    ln -s libcrypto.so.1.0.2 $usrlibpath/libcrypto.so.0.9.8 > /dev/null 2>&1
    ln -s libcrypto.so.1.0.2 $usrlibpath/libcrypto.so.0.9.7 > /dev/null 2>&1
    ln -s $usrlibpath/libcrypto.so.1.0.2 $libpath/libcrypto.so.1.0.0 > /dev/null 2>&1
    ln -s $usrlibpath/libcrypto.so.1.0.2 $libpath/libcrypto.so.0.9.8 > /dev/null 2>&1
    ln -s $usrlibpath/libcrypto.so.1.0.2 $libpath/libcrypto.so.0.9.7 > /dev/null 2>&1
elif grep -qs 'Package: libcrypto0.9.8' cat $lib_files ; then
    echo "$images libcrypto.0.9.8"
    ln -s libcrypto.so.0.9.8 $usrlibpath/libcrypto.so.0.9.7 > /dev/null 2>&1
    ln -s libcrypto.so.0.9.8 $usrlibpath/libcrypto.so.1.0.0 > /dev/null 2>&1
    ln -s $usrlibpath/libcrypto.so.0.9.8 $libpath/libcrypto.so.0.9.7 > /dev/null 2>&1
    ln -s $usrlibpath/libcrypto.so.0.9.8 $libpath/libcrypto.so.1.0.0 > /dev/null 2>&1
elif [ -f /usr/lib/libcrypto.so.3 ] ; then
    echo "$images libcrypto3"
    ln -s libcrypto.so.3 $usrlibpath/libcrypto.so.1.1 > /dev/null 2>&1
    ln -s libcrypto.so.3 $usrlibpath/libcrypto.so.1.0.0 > /dev/null 2>&1
    ln -s libcrypto.so.3 $usrlibpath/libcrypto.so.0.9.8 > /dev/null 2>&1
    ln -s libcrypto.so.3 $usrlibpath/libcrypto.so.0.9.7 > /dev/null 2>&1
    ln -s $usrlibpath/libcrypto.so.3 $libpath/libcrypto.so.1.0.0 > /dev/null 2>&1
    ln -s $usrlibpath/libcrypto.so.3 $libpath/libcrypto.so.0.9.8 > /dev/null 2>&1
    ln -s $usrlibpath/libcrypto.so.3 $libpath/libcrypto.so.0.9.7 > /dev/null 2>&1
elif [ -f /usr/lib/libcrypto.so.1.1 ] ; then
    echo "$images libcrypto1.1"
    ln -s libcrypto.so.1.1 $usrlibpath/libcrypto.so.1.0.0 > /dev/null 2>&1
    ln -s libcrypto.so.1.1 $usrlibpath/libcrypto.so.0.9.8 > /dev/null 2>&1
    ln -s libcrypto.so.1.1 $usrlibpath/libcrypto.so.0.9.7 > /dev/null 2>&1
    ln -s $usrlibpath/libcrypto.so.1.1 $libpath/libcrypto.so.1.0.0 > /dev/null 2>&1
    ln -s $usrlibpath/libcrypto.so.1.1 $libpath/libcrypto.so.0.9.8 > /dev/null 2>&1
    ln -s $usrlibpath/libcrypto.so.1.1 $libpath/libcrypto.so.0.9.7 > /dev/null 2>&1
elif [ -f /usr/lib/libcrypto.so.1.0.0 ] ; then
    echo "$images libcrypto.1.0.0"
    ln -s libcrypto.so.1.0.0 $usrlibpath/libcrypto.so.0.9.8 > /dev/null 2>&1
    ln -s libcrypto.so.1.0.0 $usrlibpath/libcrypto.so.0.9.7 > /dev/null 2>&1
    ln -s $usrlibpath/libcrypto.so.1.0.0 $libpath/libcrypto.so.0.9.8 > /dev/null 2>&1
    ln -s $usrlibpath/libcrypto.so.1.0.0 $libpath/libcrypto.so.0.9.7 > /dev/null 2>&1
elif [ -f /usr/lib/libcrypto.so.1.0.2 ] ; then
    echo "$images libcrypto.1.0.2"
    ln -s libcrypto.so.1.0.2 $usrlibpath/libcrypto.so.1.0.0 > /dev/null 2>&1
    ln -s libcrypto.so.1.0.2 $usrlibpath/libcrypto.so.0.9.8 > /dev/null 2>&1
    ln -s libcrypto.so.1.0.2 $usrlibpath/libcrypto.so.0.9.7 > /dev/null 2>&1
    ln -s $usrlibpath/libcrypto.so.1.0.2 $libpath/libcrypto.so.1.0.0 > /dev/null 2>&1
    ln -s $usrlibpath/libcrypto.so.1.0.2 $libpath/libcrypto.so.0.9.8 > /dev/null 2>&1
    ln -s $usrlibpath/libcrypto.so.1.0.2 $libpath/libcrypto.so.0.9.7 > /dev/null 2>&1
elif [ -f /usr/lib/libcrypto.so.0.9.8 ] ; then
    echo "$images libcrypto.0.9.8"
    ln -s libcrypto.so.0.9.8 $usrlibpath/libcrypto.so.0.9.7 > /dev/null 2>&1
    ln -s libcrypto.so.0.9.8 $usrlibpath/libcrypto.so.1.0.0 > /dev/null 2>&1
    ln -s $usrlibpath/libcrypto.so.0.9.8 $libpath/libcrypto.so.0.9.7 > /dev/null 2>&1
    ln -s $usrlibpath/libcrypto.so.0.9.8 $libpath/libcrypto.so.1.0.0 > /dev/null 2>&1
else ## Try to Download libcrypto from feed
    opkg update
    if [ -n "$(opkg list | grep libcrypto3)" ]; then
        echo "install libcrypto3"
        if [ -f /etc/apt/apt.conf ] ; then
            apt-get install --reinstall libcrypto3 > /dev/null 2>&1
            ln -s libcrypto.so.3 $usrlibpath/libcrypto.so.1.1 > /dev/null 2>&1
            ln -s libcrypto.so.3 $usrlibpath/libcrypto.so.1.0.0 > /dev/null 2>&1
            ln -s libcrypto.so.3 $usrlibpath/libcrypto.so.0.9.8 > /dev/null 2>&1
            ln -s libcrypto.so.3 $usrlibpath/libcrypto.so.0.9.7 > /dev/null 2>&1
            ln -s $usrlibpath/libcrypto.so.3 $libpath/libcrypto.so.1.1 > /dev/null 2>&1
            ln -s $usrlibpath/libcrypto.so.3 $libpath/libcrypto.so.1.0.0 > /dev/null 2>&1
            ln -s $usrlibpath/libcrypto.so.3 $libpath/libcrypto.so.0.9.8 > /dev/null 2>&1
            ln -s $usrlibpath/libcrypto.so.3 $libpath/libcrypto.so.0.9.7 > /dev/null 2>&1
        elif [ -f /etc/opkg/opkg.conf ] ; then
            opkg install --force-overwrite --force-depends libcrypto3 > /dev/null
            ln -s libcrypto.so.3 $usrlibpath/libcrypto.so.1.1 > /dev/null 2>&1
            ln -s libcrypto.so.3 $usrlibpath/libcrypto.so.1.0.0 > /dev/null 2>&1
            ln -s libcrypto.so.3 $usrlibpath/libcrypto.so.0.9.8 > /dev/null 2>&1
            ln -s libcrypto.so.3 $usrlibpath/libcrypto.so.0.9.7 > /dev/null 2>&1
            ln -s $usrlibpath/libcrypto.so.3 $libpath/libcrypto.so.1.1 > /dev/null 2>&1
            ln -s $usrlibpath/libcrypto.so.3 $libpath/libcrypto.so.1.0.0 > /dev/null 2>&1
            ln -s $usrlibpath/libcrypto.so.3 $libpath/libcrypto.so.0.9.8 > /dev/null 2>&1
            ln -s $usrlibpath/libcrypto.so.3 $libpath/libcrypto.so.0.9.7 > /dev/null 2>&1
        fi
    elif [ -n "$(opkg list | grep libcrypto1.1)" ]; then
        echo "install libcrypto1.1"
        if [ -f /etc/apt/apt.conf ] ; then
            apt-get install --reinstall libcrypto1.1 > /dev/null 2>&1
            ln -s libcrypto.so.1.1 $usrlibpath/libcrypto.so.1.0.0 > /dev/null 2>&1
            ln -s libcrypto.so.1.1 $usrlibpath/libcrypto.so.0.9.8 > /dev/null 2>&1
            ln -s libcrypto.so.1.1 $usrlibpath/libcrypto.so.0.9.7 > /dev/null 2>&1
            ln -s $usrlibpath/libcrypto.so.1.1 $libpath/libcrypto.so.1.0.0 > /dev/null 2>&1
            ln -s $usrlibpath/libcrypto.so.1.1 $libpath/libcrypto.so.0.9.8 > /dev/null 2>&1
            ln -s $usrlibpath/libcrypto.so.1.1 $libpath/libcrypto.so.0.9.7 > /dev/null 2>&1
        elif [ -f /etc/opkg/opkg.conf ] ; then
            opkg install --force-overwrite --force-depends libcrypto1.1 > /dev/null
            ln -s libcrypto.so.1.1 $usrlibpath/libcrypto.so.1.0.0 > /dev/null 2>&1
            ln -s libcrypto.so.1.1 $usrlibpath/libcrypto.so.0.9.8 > /dev/null 2>&1
            ln -s libcrypto.so.1.1 $usrlibpath/libcrypto.so.0.9.7 > /dev/null 2>&1
            ln -s $usrlibpath/libcrypto.so.1.1 $libpath/libcrypto.so.1.0.0 > /dev/null 2>&1
            ln -s $usrlibpath/libcrypto.so.1.1 $libpath/libcrypto.so.0.9.8 > /dev/null 2>&1
            ln -s $usrlibpath/libcrypto.so.1.1 $libpath/libcrypto.so.0.9.7 > /dev/null 2>&1
        fi
    elif [ -n "$(opkg list | grep libcrypto1.0.2)" ]; then
        echo "install libcrypto1.0.2"
        if [ -f /etc/apt/apt.conf ] ; then
            apt-get install --reinstall libcrypto1.0.2 > /dev/null 2>&1
            ln -s libcrypto.so.1.0.2 $usrlibpath/libcrypto.so.1.0.0 > /dev/null 2>&1
            ln -s libcrypto.so.1.0.2 $usrlibpath/libcrypto.so.0.9.8 > /dev/null 2>&1
            ln -s libcrypto.so.1.0.2 $usrlibpath/libcrypto.so.0.9.7 > /dev/null 2>&1
            ln -s $usrlibpath/libcrypto.so.1.0.2 $libpath/libcrypto.so.1.0.0 > /dev/null 2>&1
            ln -s $usrlibpath/libcrypto.so.1.0.2 $libpath/libcrypto.so.0.9.8 > /dev/null 2>&1
            ln -s $usrlibpath/libcrypto.so.1.0.2 $libpath/libcrypto.so.0.9.7 > /dev/null 2>&1
        elif [ -f /etc/opkg/opkg.conf ] ; then
            opkg install --force-overwrite --force-depends libcrypto1.0.2 > /dev/null
            ln -s libcrypto.so.1.0.2 $usrlibpath/libcrypto.so.1.0.0 > /dev/null 2>&1
            ln -s libcrypto.so.1.0.2 $usrlibpath/libcrypto.so.0.9.8 > /dev/null 2>&1
            ln -s libcrypto.so.1.0.2 $usrlibpath/libcrypto.so.0.9.7 > /dev/null 2>&1
            ln -s $usrlibpath/libcrypto.so.1.0.2 $libpath/libcrypto.so.1.0.0 > /dev/null 2>&1
            ln -s $usrlibpath/libcrypto.so.1.0.2 $libpath/libcrypto.so.0.9.8 > /dev/null 2>&1
            ln -s $usrlibpath/libcrypto.so.1.0.2 $libpath/libcrypto.so.0.9.7 > /dev/null 2>&1
        fi
    elif [ -n "$(opkg list | grep libcrypto1.0.0)" ]; then
        echo "install libcrypto1.0.0"
        if [ -f /etc/apt/apt.conf ] ; then
            apt-get install --reinstall libcrypto1.0.0 > /dev/null 2>&1
            ln -s libcrypto.so.1.0.0 $usrlibpath/libcrypto.so.0.9.8 > /dev/null 2>&1
            ln -s libcrypto.so.1.0.0 $usrlibpath/libcrypto.so.0.9.7 > /dev/null 2>&1
            ln -s $usrlibpath/libcrypto.so.1.0.0 $libpath/libcrypto.so.0.9.8 > /dev/null 2>&1
            ln -s $usrlibpath/libcrypto.so.1.0.0 $libpath/libcrypto.so.0.9.7 > /dev/null 2>&1
        elif [ -f /etc/opkg/opkg.conf ] ; then
            opkg install --force-overwrite --force-depends libcrypto1.0.0 > /dev/null
            ln -s libcrypto.so.1.0.0 $usrlibpath/libcrypto.so.0.9.8 > /dev/null 2>&1
            ln -s libcrypto.so.1.0.0 $usrlibpath/libcrypto.so.0.9.7 > /dev/null 2>&1
            ln -s $usrlibpath/libcrypto.so.1.0.0 $libpath/libcrypto.so.0.9.8 > /dev/null 2>&1
            ln -s $usrlibpath/libcrypto.so.1.0.0 $libpath/libcrypto.so.0.9.7 > /dev/null 2>&1
        fi
    elif [ -n "$(opkg list | grep libcrypto0.9.8)" ]; then
        echo "install libcrypto0.9.8"
        if [ -f /etc/apt/apt.conf ] ; then
            apt-get install --reinstall libcrypto0.9.8 > /dev/null 2>&1
            ln -s libcrypto.so.0.9.8 $usrlibpath/libcrypto.so.0.9.7 > /dev/null 2>&1
            ln -s libcrypto.so.0.9.8 $usrlibpath/libcrypto.so.1.0.0 > /dev/null 2>&1
            ln -s $usrlibpath/libcrypto.so.0.9.8 $libpath/libcrypto.so.0.9.7 > /dev/null 2>&1
            ln -s $usrlibpath/libcrypto.so.0.9.8 $libpath/libcrypto.so.1.0.0 > /dev/null 2>&1
        elif [ -f /etc/opkg/opkg.conf ] ; then
            opkg install --force-overwrite --force-depends libcrypto0.9.8 > /dev/null 2>&1
            ln -s libcrypto.so.0.9.8 $usrlibpath/libcrypto.so.0.9.7 > /dev/null 2>&1
            ln -s libcrypto.so.0.9.8 $usrlibpath/libcrypto.so.1.0.0 > /dev/null 2>&1
            ln -s $usrlibpath/libcrypto.so.0.9.8 $libpath/libcrypto.so.0.9.7 > /dev/null 2>&1
            ln -s $usrlibpath/libcrypto.so.0.9.8 $libpath/libcrypto.so.1.0.0 > /dev/null 2>&1
        fi
    else
        echo $LINE
        echo "ERROR: The libcryptox.x.x file could not be loaded from the repository."
        echo $LINE
        exit 1
    fi
fi

#######################
MY_FILE="Manager.tar"
#######################

MY_URL="http://levi45.spdns.eu/Addons/Multicam/Levi45MulticamManager/10/Manager.tar"
MY_TMP_FILE="/tmp/"$MY_FILE

rm -f $MY_TMP_FILE > /dev/null 2>&1

if file_exists(oldplug1)
rm -rf %s > /dev/null 2>&1" % oldplug1
oldplug1 = '/usr/lib/enigma2/python/Plugins/Extensions/Manager/emu'


MY_SEP='============================================================='
echo $MY_SEP
echo 'Downloading '$MY_FILE' ...'
echo $MY_SEP
echo ''
wget -T 2 $MY_URL -P "/tmp/"

if [ -f $MY_TMP_FILE ]; then

	echo ''
	echo $MY_SEP
	echo 'Extracting ...'
	echo $MY_SEP
	echo ''
	tar -xvf $MY_TMP_FILE -C /
	MY_RESULT=$?

	rm -f $MY_TMP_FILE > /dev/null 2>&1

	echo ''
	echo ''
	if [ $MY_RESULT -eq 0 ]; then
	    echo "
        echo "#########################################################"
        echo "#     Levi45MulticamManager INSTALLED SUCCESSFULLY      #"
        echo "#           Re_uploded by BIKO - support on             #"
        echo "#  https://www.tunisia-sat.com/forums/forums/3957738/   #"
        echo "#########################################################"
        echo "#           your Device will RESTART Now                #"
        echo "#########################################################"		
		if which systemctl > /dev/null 2>&1; then
			sleep 2; systemctl restart enigma2
		else
			init 4; sleep 4; init 3;
		fi
	else
		echo "   >>>>   INSTALLATION FAILED !   <<<<"
	fi;
	echo ''
	echo '**************************************************'
	echo '**                   FINISHED                   **'
	echo '**************************************************'
	echo ''
	exit 0
else
	echo ''
	echo "Download failed !"
	exit 1
fi
# ------------------------------------------------------------------------------------------------------------
