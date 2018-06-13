copy over contents of /usr/local/etc/babun/source/babun-core/plugins/start.sh

#!/bin/bash
set -e -f -o pipefail
source "/usr/local/etc/babun.instance"
source "$babun_tools/script.sh"
source "$babun_tools/plugins.sh"

# make sure there is no race conditions using a "mutex"
# when several shells is spawned at the same time
LOCKDIR="/tmp/plugins_start_lockdir"
while true; do
	if mkdir "${LOCKDIR}" &> /dev/null; then
		trap 'rm -rf "${LOCKDIR}"' 0
		break
	fi
	sleep 0.001 # 1ms
	RETRY_MS=$(($RETRY_MS+1))
	if [ $RETRY_MS -gt 1000 ]; then
		exit # exit having retried 1000 times = 1s
	fi
done

# start plugins
plugin_start "git"
plugin_start "core"
plugin_start "cygdrive"
plugin_start "cygfix"

# Automatic start disabled for now as we have to control the order of plugin starts
#
# for startFile in $(find "$babun_plugins" -name 'start.sh');
# do
# 	bash "$startFile" || echo "Could not start $startFile"
# done
