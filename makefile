#make -f makefile
TARGET=README

.PHONY:all
all: $(TARGET) create

$(TARGET):
	touch $(TARGET).md

.PHONY: create
$create: guessinggame.sh
	echo "### MY PROJECT" > $(TARGET).md
	echo "ls -l \n" makefile >> $(TARGET).md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> $(TARGET).md

clean:
	rm $(TARGET).md
