POETRY ?= poetry
CONDA ?= conda

all: install docs

.PHONY: clean
clean:
	@$(RM) -rf docs/_build

.PHONY: docs
docs: clean
	@$(POETRY) run jupyter-book build docs

.PHONY: env
env:
	$(CONDA) create -p ./.venv poetry

.PHONY: install
install:
	@$(POETRY) install