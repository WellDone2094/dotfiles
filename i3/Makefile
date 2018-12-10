.PHONY: install clean
I3_PATH = ~/.config/i3

install:
	mkdir -p $(I3_PATH)
	ln -s $(CURDIR)/config $(I3_PATH)/config | echo "i3/config ALREADY EXISTS"

clean:
	rm -rf $(I3_PATH)/config
