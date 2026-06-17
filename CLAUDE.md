# Project instructions

This is a Flutter **web** app that displays live BirdWeather station data as a
public museum-style exhibit.

## Git workflow

- **Never push straight to `dev`.** `dev` is the default/integration branch and
  is updated only through pull requests. Do all work on a feature branch
  (e.g. `fix/...`, `feature/...`) and open a PR into `dev` for review — do not
  `git push origin dev` or merge directly to it, even when asked to "wrap up" or
  "finish." If a direct push to `dev` seems necessary, stop and ask first.

## Runtime target & display (read before touching layout or `web/index.html`)

- The deployed exhibit runs on an **Amazon Fire TV Stick** via **AbleSign** (a
  digital-signage app that renders the URL in an Android System WebView) — NOT a
  desktop browser. Display bugs here usually do **not** reproduce in desktop
  Chrome/Edge.
- That Fire Stick reports `devicePixelRatio = 4`, and its GPU (PowerVR Rogue
  GE9215) has `MAX_TEXTURE_SIZE = 4096`. Flutter's CanvasKit renderer paints at
  `logicalSize × devicePixelRatio`, so a 1920-wide view requests a 7680px
  surface — exceeding 4096, which makes only the left ~half render and the rest
  go blank white.
- **`web/index.html` contains a script that caps `devicePixelRatio` to keep the
  render surface under the texture limit. Do NOT remove it** (nor the
  `<meta name="viewport">` tag). Both are intentional fixes for the WebView.
- **Validate any display/layout change on the actual Fire Stick / AbleSign**, not
  just `flutter run -d edge`.

## Build & preview

- Flutter is pinned to **3.29.3** via fvm (`.fvmrc`). Use `fvm flutter ...`.
- Local preview: `fvm flutter run -d edge` (Chrome may not be installed).

## Deploy

- GitHub Pages serves the built site from the **`deploy` branch of a SEPARATE
  repo**, `jessicatir/birdweather-exhibit-pages`, live at
  https://jessicatir.github.io/birdweather-exhibit-pages/. This repo's `dev`/
  feature branches are source only.
- Build with the Pages base href, then push `build/web` to that repo's `deploy`
  branch (see the `deploy` target in `birdweather_exhibit/Makefile`):
  `flutter build web --base-href "/birdweather-exhibit-pages/" --release`
- **After deploying, the Fire Stick will keep showing the old build until
  AbleSign's service-worker cache is cleared** (clear its cache or re-add the
  URL). Many "the fix didn't work" reports are just stale cache.
