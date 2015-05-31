.PHONY: clean

SOURCES = $(wildcard h/*.hs)
BINARIES = $(addprefix bin/h,$(notdir $(SOURCES:.hs=)))

bin/h%: h/%.hs
	-@mkdir -p ./bin
	@ghc -o ./bin/h$(basename $(notdir $<)) --make $<


build: $(BINARIES)


clean:
	-@rm -Rf ./bin
