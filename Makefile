ifneq ("$(wildcard /projects/tools/c/libemail.c)","")
LIBEMAIL=-DLIBEMAIL -I/projects/tools/c/ /projects/tools/lib/libemaillight.o
else
LIBEMAIL=
endif

ifneq ("$(wildcard /usr/include/mosquitto.h)","")
LIBMQTT=-DLIBMQTT -lmosquitto
else
LIBMQTT=
endif

all: git alarmpanel

update:
	git submodule update --remote --merge

AXL/axl.o: AXL/axl.c
	make -C AXL
Dataformat/dataformat.o: Dataformat/dataformat.c
	make -C Dataformat
websocket/websocket.o: websocket/websocket.c
	make -C websocket

alarmpanel: alarmpanel.c galaxybus.o galaxybus.h port.o port.h door.o door.h AXL/axl.o Dataformat/dataformat.o websocket/websocket.o trace.h
	cc -g -Wall -Wextra -O -o alarmpanel alarmpanel.c galaxybus.o port.o door.o -I. -IAXL -IDataformat -Iwebsocket AXL/axl.o Dataformat/dataformat.o websocket/websocket.o -lcurl -pthread -lpopt -DLIBWS ${LIBEMAIL} ${LIBMQTT} -lcrypto -lssl

galaxybus.o: galaxybus.c
	cc -g -Wall -Wextra -O -c -o galaxybus.o galaxybus.c -I. -DLIB -pthread

door.o: door.c
	cc -g -Wall -Wextra -O -c -o door.o door.c -I. -DLIB -pthread

port.o: port.c
	cc -g -Wall -Wextra -O -c -o port.o port.c -I. -DLIB -pthread

clean:
	rm -f *.o alarmpanel

git:
	git submodule update --init
