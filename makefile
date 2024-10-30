VENV_DIR := venv

.PHONY: install clean

install:
	@echo "Update system packages..."
	sudo apt update
	@echo "Install python3,pip,and required lib..."
	sudo apt install -y python3 python3-pip python3-venv python3-smbus
	@echo "Creating virtual environment..."
	python3 -m venv $(VENV_DIR)
	@echo "Activating virtual environment and installing Python dependencies..."
	. $(VENV_DIR)/bin/activate && pip install --upgrade pip
	
	
	@if [ -f requirements.txt ];	then \
		echo "Installing libraries from requirements.txt..."; \
		. $(VENV_DIR)/bin/activate && pip install -r requirements.txt; \
	else \
		echo "requirements.txt not found, skipping."; \
	fi

clear: 
	@echo "Removing virtual environment"
	rm -rf $(VENV_DIR)
	@echo "Clean-up complete."








