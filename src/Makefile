include Rule.mk

TARGET := my

all: $(TARGET)

$(TARGET):
	cd ./lib; make
	cd ./app; make

.PHONY: clean
clean:
	cd ./lib; make clean
	cd ./app; make clean

.PHONY: install
install:
	mkdir -p $(INSTALL_DIR)
	cd ./app; make install

.PHONY: uninstall
uninstall:
	cd ./app; make uninstall
	rm -r $(INSTALL_DIR)