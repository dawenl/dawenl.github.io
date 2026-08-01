PYTHON ?= python3
JEMDOC := $(CURDIR)/jemdoc.py
SOURCE := index.jemdoc
OUTPUT := index.html

.PHONY: all

all: $(OUTPUT)

$(OUTPUT): $(SOURCE) $(JEMDOC) jemdoc.css
	$(PYTHON) $(JEMDOC) $(SOURCE)
