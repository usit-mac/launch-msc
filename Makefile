include /usr/local/share/luggage/luggage.make

TITLE=setup_connectshares
VERSION=1.0
REVERSE_DOMAIN=no.uio.usit

PAYLOAD=\
	pack-Library-LaunchAgents-no.uio.usit.launch-msc.plist\
	pack-launch-msc-then-destruct.sh

1_Myorg: l_Library
	@sudo mkdir -p ${WORK_D}/Library/Scripts
	@sudo chown root:wheel ${WORK_D}/Library/Scripts
	@sudo chmod 755 ${WORK_D}/Library/Scripts

pack-launch-msc-then-destruct.sh: 1_Myorg
	@sudo ${CP} ./launch-msc-then-destruct.sh ${WORK_D}/Library/Scripts/launch-msc-then-destruct.sh
	@sudo chown root:wheel ${WORK_D}/Library/Scripts/launch-msc-then-destruct.sh
	@sudo chmod 755 ${WORK_D}/Library/Scripts/launch-msc-then-destruct.sh
