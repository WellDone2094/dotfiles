.PHONY: install clean
NVIM_PATH = "$(HOME)/.config/nvim"

install:
	mkdir -p $(NVIM_PATH)
	ln -s "$(CURDIR)/init.vim" "$(NVIM_PATH)/init.vim" | echo "nvim/init.vim ALREADY EXISTS"
	curl -fLo "$(HOME)/.local/share/nvim/site/autoload/plug.vim" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	nvim -c PlugInstall -c qa

clean:
	rm -rf ~/.config/nvim/init.vim
