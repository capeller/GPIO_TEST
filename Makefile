obj-m = myled.o

KVERSION = $(shell uname -r)

install:
	make -C /lib/modules/$(KVERSION)/build M=$(shell pwd) modules

clean:
	make -C /lib/modules/$(KVERSION)/build M=$(PWD) clean
