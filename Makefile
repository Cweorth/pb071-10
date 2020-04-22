all:
	@echo -e "\e[93mWhat do you want me to do?"
	@echo
	@echo -e "    \e[94mmake \e[1mrun\e[0m   compile and run playground code"
	@echo -e "    \e[94mmake \e[1mtest\e[0m  compile and run tests"

run: build/Makefile
	@$(MAKE) -C build playground
	@cd build ; ./playground

test: build/Makefile
	@$(MAKE) -C build tests
	@cd build ; ./tests

build/Makefile:
	@mkdir -p build
	cd build ; cmake ..

clean:
	@$(MAKE) -C build clean

distclean: clean
	@$(RM) -r build

.PHONY: all run test clean distclean
