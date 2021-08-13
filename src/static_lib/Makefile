include ../Rule.mk

TARGET := libslib.a

all: $(TARGET)

%.o: %.cpp
	$(CXX) -o $@ $(CXXFLAGS) $(INCLUDES) $< -c
%.o: %.c
	$(GCC) -o $@ $(CFLAGS) $(INCLUDES) $< -c

$(TARGET): $(OBJS)
	$(AR) rcs $@ $^

.PHONY: clean
clean:
	rm -f $(OBJS) $(TARGET)