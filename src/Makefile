include Rule.mk

TARGET := my

all: $(TARGET)

$(TARGET):
	cd ./static_lib; make
	cd ./shared_lib; make
	cd ./app; make

.PHONY: clean
clean:
	cd ./static_lib; make clean
	cd ./shared_lib; make clean
	cd ./app; make clean

.PHONY: install
install:
	mkdir -p $(INSTALL_DIR)
	cd ./shared_lib; make install
	cd ./app; make install

.PHONY: uninstall
uninstall:
	cd ./app; make uninstall
	cd ./shared_lib; make uninstall
	rm -r $(INSTALL_DIR)