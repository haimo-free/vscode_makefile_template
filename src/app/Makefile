include ../Rule.mk

SLIB_PATH = ../static_lib
DLIB_PATH = ../shared_lib

INCLUDES += -I. \
			-I$(SLIB_PATH) \
			-I$(DLIB_PATH)

LIBS += -L$(SLIB_PATH) -lslib \
		-L$(DLIB_PATH) -ldlib

LDFLAGS += -Wl,-rpath,./

TARGET := app

all: $(TARGET)

%.o: %.cpp
	$(CXX) -o $@ $(CXXFLAGS) $(INCLUDES) $< -c
%.o: %.c
	$(GCC) -o $@ $(CFLAGS) $(INCLUDES) $< -c

$(TARGET): $(OBJS)
	$(CXX) $^ $(LIBS) $(LDFLAGS) -o $@

.PHONY: clean
clean:
	rm -f $(OBJS) $(TARGET)

.PHONY: install
install:
	cp -rf ./$(TARGET) $(INSTALL_DIR)

.PHONY: uninstall
uninstall:
	rm -rf $(INSTALL_DIR)/$(TARGET)