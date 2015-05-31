.PHONY: clean

build: h/*.hs
	-@mkdir -p ./bin
	@ghc -o ./bin/h$(basename $(notdir $<)) --make $<


clean:
	-@rm -Rf ./bin
