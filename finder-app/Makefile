ifeq ($(CROSS_COMPILER),aarch64-none-linux-gnu-)
	com = $(CROSS_COMPILER)gcc
else
	com = gcc
endif

TARGET = writer


all: $(TARGET)

$(TARGET): writer.c
	$(com) writer.c -o writer
	chmod +x $(TARGET)
clean:
	rm -f $(TARGET)









#	/opt/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin/aarch64-none-linux-gnu-gcc  -Os -o $(TARGET).o $(SRC)