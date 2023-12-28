SRC := \
	lexer.c \
	parser.c \
	codegen.c \
	main.c

OBJ := $(SRC:%.c=%.o)

PRG := toy

.PHONY: all clean

all: $(PRG)

$(PRG): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f $(OBJ) $(PRG)
