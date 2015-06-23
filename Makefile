SITE_PATH = _site/
DATE = $(shell date -Ins)
COMMIT_HASH=$(shell git rev-parse HEAD)
SOURCE_STATUS=$(shell [ -z "`git status | grep -i 'nothing to commit'`" ] && echo false || echo true)

all:
	@echo "==> Generation started at ${DATE}"

ifeq ($(SOURCE_STATUS),false)
	@echo "==> ERROR: source branch has uncommited changes!"
	@exit 1
endif

	@echo "==> Building site with Jekyll"
	@bundle exec jekyll build
	@echo "==> Switcing to master branch"
	@git checkout master
	@echo "==> Copying site files"
	@cp -rp _site/* .
	@cp -rp _site/.[a-zA-Z0-9]* .
	@echo "==> Commiting changeset ${COMMIT_HASH} to repository"
	@git add --all . && git commit -m "Generate ${COMMIT_HASH}"
	@echo "==> Switcing to source branch"
	@git checkout source
	@echo "==> Pushing master branch to origin"
	@git push origin master
	@echo "==> Generation complete"
	@exit 0
