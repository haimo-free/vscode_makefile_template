include ../Rule.mk

LIB_PATH = ../lib

INCLUDES += -I. \
			-I$(LIB_PATH)

LIBS += -L$(LIB_PATH) -lmy_math

TARGET := my_app

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