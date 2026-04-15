TARGET := $(HOME)

install:
	stow --target=$(TARGET) .

uninstall:
	stow --target=$(TARGET) -D .

reinstall:
	stow --target=$(TARGET) -R .

dry-run:
	stow --target=$(TARGET) -n .
