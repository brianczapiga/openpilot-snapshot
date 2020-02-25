LIBPATHS=-L/system/vendor/lib64 -L/data/openpilot/phonelibs
INCPATHS=-I/data/openpilot/selfdrive -I/data/openpilot/phonelibs/opencl/include
LIBS=-lOpenCL -lCB -lgsl
EXTOBJS=/data/openpilot/selfdrive/common/visionipc.o /data/openpilot/selfdrive/common/ipc.o
OBJS=openpilot-snapshot.o

all:	openpilot-snapshot

openpilot-snapshot: ${OBJS}
		clang++ ${INCPATHS} ${LIBPATHS} ${LIBS} ${EXTOBJS} -o $@ ${OBJS}

test:	openpilot-snapshot
	./openpilot-snapshot

%.o:	%.cc
		clang++ ${INCPATHS} -c -o $@ $<
	
clean:
		rm -f openpilot-snapshot ${OBJS}
