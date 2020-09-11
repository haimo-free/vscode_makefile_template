include ../Rule.mk

TARGET := libmy_math.a

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