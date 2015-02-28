SRC = $(wildcard *.c)

awk: $(SRC:%.c=%.o)
	$(CC) -o $@ $^ -lm

all: awk

-include $(SRC:%.c=%.d)

clean:
	rm -f *.o awk
