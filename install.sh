#!/bin/bash

source "conf.sh";

# Check if shebang from katoolin3.py can execute
/usr/bin/env python3 -V >/dev/null || die "Please install 'python3'";

# Install all dependencies
apt-key adv -qq --keyserver pool.sks-keyservers.net --recv-keys ED444FF07D8D0BF6 || die;
apt-get -qq -y -m install python3-apt || die;

install -T -g root -o root -m 555 ./katoolin3.py "$DIR/$PROGRAM" || die;

echo "Successfully installed. Run it with 'sudo $PROGRAM'.";
exit 0;