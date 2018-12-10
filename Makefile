SUBDIRS = bash tmux i3 neovim

.PHONY: install clear $(SUBDIRS)

install: $(SUBDIRS)

clean: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS) 



