CC = gcc

CFLAGS = -g -Wall

TARGET = a3chat

all: $(TARGET)

$(TARGET): $(TARGET).c client.c server.c
	$(CC) $(CFLAGS) -o $(TARGET) $(TARGET).c client.c server.c -lm

clean:
	$(RM) -rf $(TARGET) client.o server.o $(TARGET).dSYM submit.tar

tar:
	tar -zcvf submit.tar $(TARGET).c a3chat.h client.c client.h server.c server.h Makefile report.pdf

