generate:
	fvm dart run build_runner build --delete-conflicting-outputs

build_web:
	flutter build web --base-href="/birdweather_exhibit/" --release

BASE_HREF = /birdweather-exhibit-pages/
GITHUB_USER = jessicatir
GITHUB_REPO = https://github.com/jessicatir/birdweather-exhibit-pages
BUILD_VERSION := $(shell grep 'version:' pubspec.yaml | awk '{print $$2}')

deploy:
	@echo "Clean existing repository"
	fvm flutter clean
	@echo "Getting packages..."
	fvm flutter pub get
	@echo "Building for web..."
	flutter build web --base-href $(BASE_HREF) --release
	@echo "Deploying to git repository"
	cd build/web && \
	git init && \
	git add . && \
	git commit -m "Deploy Version $(BUILD_VERSION)" && \
	git branch -M deploy && \
	git remote add origin $(GITHUB_REPO) && \
	git push -u -f origin deploy
	@echo "Finished deploy: $(GITHUB_REPO)"
	@echo "Flutter web URL: https://$(GITHUB_USER).github.io/birdweather-exhibit-pages/"
.PHONY: deploy