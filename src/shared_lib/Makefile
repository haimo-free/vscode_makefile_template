include ../Rule.mk

INCLUDES += -I.

LIBS += 

TARGET := libdlib.so

all: $(TARGET)

%.o: %.cpp
	$(CXX) -o $@ $(CXXFLAGS) $(INCLUDES) $< -c
%.o: %.c
	$(GCC) -o $@ $(CFLAGS) $(INCLUDES) $< -c

$(TARGET): $(OBJS)
	$(CXX) -shared $^ $(LIBS) $(LDFLAGS) -o $@

.PHONY: clean
clean:
	rm -f $(OBJS) $(TARGET)

.PHONY: install
install:
	cp -rf ./$(TARGET) $(INSTALL_DIR)

.PHONY: uninstall
uninstall:
	rm -rf $(INSTALL_DIR)/$(TARGET)