DIRS = TheIncredibleFramework

build-all:
	clear
	@for dir in $(DIRS) ; do \
		echo ">>> Building XCFramework for $$dir ..." ; \
		sleep 1 ; \
		$(MAKE) -C $$dir build ; \
		echo "" ; \
		echo "+--------------------------------------------+" ; \
		echo "|                                            |" ; \
		echo "|    XCFrameworks builded with success ✅    |" ; \
		echo "|                                            |" ; \
		echo "+--------------------------------------------+" ; \
		echo "" ; \
    done