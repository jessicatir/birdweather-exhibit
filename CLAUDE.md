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

## Environment setup

- This project uses **FVM** (Flutter Version Management) to pin the Flutter SDK
  version. The pinned version is declared in `birdweather_exhibit/.fvmrc`.
- Install FVM: `dart pub global activate fvm`
- Install the pinned SDK: `cd birdweather_exhibit && fvm install`
- Link the project: `fvm use <version>` (reads from `.fvmrc`)
- FVM installs to `C:\Users\<user>\AppData\Local\Pub\Cache\bin` (Windows). This
  directory must be on the system PATH.
- **After editing PATH, fully restart VS Code** (not just the terminal) — VS Code
  inherits environment variables at launch and won't pick up changes from a new
  terminal tab alone.
- **Always use `fvm flutter ...` and `fvm dart ...`** instead of bare
  `flutter`/`dart` to ensure the correct pinned SDK version is used.

## Build & preview

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

## Debugging WebView display issues

Display bugs that only appear on the Fire Stick are hard to reproduce locally.
The effective approach: deploy a small static diagnostic page that prints
`window.innerWidth`, `devicePixelRatio`, `screen.*`, and the WebGL
`MAX_TEXTURE_SIZE`/renderer, then load it via AbleSign and read the values.
`diag.html` on the `deploy` branch of the pages repo is exactly this — that's
how the DPR/texture-limit clipping was diagnosed. Remove it once no longer
needed.

## Exhibit copy

This is a public, museum-style exhibit, so wording should be approachable:

- **Soften "AI" language** — e.g. describe the detection as a "bird sound
  detection algorithm" rather than "AI," to avoid alienating AI-skeptical
  visitors.
- **Name the location concretely** ("a neighborhood in Pullman, WA") rather than
  vague phrasing.
- Public-facing copy lives in
  `birdweather_exhibit/lib/species_information/components/exhibit_info_card.dart`.

## Repo housekeeping

- The desktop **generated plugin registrant files** (`linux/`, `macos/`,
  `windows/` `flutter/generated_plugin_registrant.*` and `generated_plugins.cmake`)
  are gitignored — this is a web-only deploy and `flutter pub get`/build
  regenerate them locally. Do not re-add or commit them.
