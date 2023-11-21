OBJOUT := ./out
EXEOUT := ./out/
INCLUDE_DIR := ./include
SRC_DIR_TEST = ./unittest
SRC_DIR_THREADPOLL = ./src
LIB := -lpthread

SRC := $(wildcard $(SRC_DIR_TEST)/*.cpp)
SRC += $(wildcard $(SRC_DIR_THREADPOLL)/*.cpp)
OBJ := $(patsubst %.cpp,%.o, $(SRC))

TARGET := testLogger
CC := g++
CXXFLAG = -std=c++11
CFLAGS := -I$(INCLUDE_DIR)

all: PRE_CHECK $(TARGET) 
$(TARGET) : $(OBJ)
	@echo "SRC: " $(SRC)
	@echo "OBJ: " $(OBJ)
	@echo "TARGET: " $(TARGET)
	$(CC) $(CFLAGS) $(CXXFLAG) $^ -o $(TARGET) $(LIB)
	mv $^ $(OBJOUT)
	@echo "Compiling" $@ "end\n"

%.o : %.cpp
	echo "Compiling " $< "...."
	$(CC) $(CFLAGS) $(CXXFLAG) -c $^ -o $@ $(LIB)
	@echo "Compiling " $@ "end\n"

PRE_CHECK:
	@if [ -f $(TARGET) ];then	\
		echo "make clean";	\
		make clean;		\
	fi
	@if [ ! -d $(OBJOUT) ];then \
		echo "Folder $(OBJOUT) does not exist, creating it..."; \
		mkdir $(OBJOUT); \
	else	\
		echo "Folder $(OBJOUT) already exists, nothing to do";	\
	fi

.PHONY: clean

clean:
	rm -rf $(TARGET) $(OBJOUT)/* $(OBJOUT)