SHELL = /bin/bash

CT := docker run --rm -v $$(pwd):/opt -w /opt quay.io/helmpack/chart-testing:latest ct
HELM := docker run --rm -v $$(pwd):/opt -w /opt alpine/helm
CHARTS := $(shell find charts -mindepth 2 -maxdepth 2 -name Chart.yaml | cut -d/ -f2)

TEMPLATE_TARGETS := $(foreach c,$(CHARTS),template/$(c))
template/%:
	@echo "Rendering [$*]"
	$(HELM)	template tpl-$* charts/$* --output-dir=build/$* --namespace=tpl

template: $(TEMPLATE_TARGETS)

lint:
	$(CT) lint --all

docs:
	helm-docs