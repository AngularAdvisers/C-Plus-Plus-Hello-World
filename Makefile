# Specify compiler
CC=g++
	
# Specify linker
LINK=g++

# Specify the Compiler switches
G++_FLAGS = -c -g -Wall

# Specify the linked libraries
LD_FLAGS = -lstdc++ 

# Specify the target
TARGET = HelloWorld.out

# Specify the modules for linking
OBJECTS = HelloWorld.o

.PHONY : $(TARGET)
all : $(TARGET)
 
# Link the object files into a binary
$(TARGET): $(OBJECTS)
	$(LINK) -o $(TARGET) $(OBJECTS) $(LD_FLAGS)

# Compile the modules
%.o : %.c
	$(CC) $(G++_FLAGS) $<

# Clean target
clean :
	rm -f $(TARGET) $(OBJECTS) 
.PHONY : all clean