INSTALL_DIR = /etc/update-motd.d
SCRIPT_NAME = motd-raspberrypi
BUILD_DIR = build
DEBIAN_DIR = $(BUILD_DIR)/DEBIAN
PACKAGE_NAME = motd-raspberrypi
VERSION = 2025.3
ARCH = all

all:
	@echo "Run 'make install' to install $(PACKAGE_NAME)."

install:
	@mkdir -p $(INSTALL_DIR)
	@install -m 755 $(SCRIPT_NAME) $(INSTALL_DIR)/
	@echo "Installation complete."

uninstall:
	@rm -f $(INSTALL_DIR)/$(SCRIPT_NAME)
	@echo "Uninstallation complete."

clean:
	@rm -rf $(BUILD_DIR) *.deb
	@echo "Cleanup complete."

build: clean
	@mkdir -p $(DEBIAN_DIR) $(BUILD_DIR)$(INSTALL_DIR)
	@cp $(SCRIPT_NAME) $(BUILD_DIR)$(INSTALL_DIR)/
	@cp -r debian/* $(DEBIAN_DIR)/
	@dpkg-deb --build $(BUILD_DIR) $(PACKAGE_NAME)_$(VERSION)_$(ARCH).deb
	@rm -rf $(BUILD_DIR)
	@echo "Build complete."

.PHONY: all install uninstall clean build
