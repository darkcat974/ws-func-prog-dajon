MAIN = Main.hs\
		Operation.hs

BIN = test

all:
	ghc --make $(MAIN) -o $(BIN)

clean:
	rm -f *.o *.hi $(BIN)