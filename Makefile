.PHONY: rebuild
rebuild:
	@echo "Rebuilding..."
	cd libs/blog.liaosirui.com && git pull --rebase
	docker compose up mkdocs

.PHONY: resync
resync:
	rsync -av --delete site/ jd:/root/sites/blog.liaosirui.com/
