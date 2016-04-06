include /usr/local/share/luggage/luggage.make

TITLE=setup_launch-msc
VERSION=1.0
REVERSE_DOMAIN=no.uio.usit
THEPATH=${WORK_D}/Library/Scripts

PAYLOAD=\
	pack-Library-LaunchAgents-no.uio.usit.launch-msc.plist\
	pack-launch-msc-then-destruct.sh

1_Myorg: l_Library
	@sudo mkdir -p ${THEPATH}
	@sudo chown root:wheel ${THEPATH}
	@sudo chmod 755 ${THEPATH}

pack-launch-msc-then-destruct.sh: 1_Myorg
	@sudo ${CP} ./launch-msc-then-destruct.sh ${THEPATH}/launch-msc-then-destruct.sh
	@sudo chown root:wheel ${THEPATH}/launch-msc-then-destruct.sh
	@sudo chmod 755 ${THEPATH}/launch-msc-then-destruct.sh
