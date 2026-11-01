# SpeechButton Homebrew tap

Voice-to-text for macOS. Hold a hotkey, speak, release — text appears instantly.

## Install

```sh
brew tap speechbutton/tap
brew install --cask speechbutton
```

Or in one line:

```sh
brew install --cask speechbutton/tap/speechbutton
```

## Upgrade

```sh
brew upgrade --cask speechbutton
```

A plain `brew upgrade` picks this cask up as well, because it declares a real version
number. That has not always been true: until 2026-11 the cask used `version :latest`,
and Homebrew excludes such casks from an ordinary `brew upgrade` — they update only when
named explicitly or with `--greedy-latest`. If you installed before that change, one
`brew upgrade --cask speechbutton` puts you back in step.

## Uninstall

```sh
brew uninstall --cask speechbutton          # remove the app
brew uninstall --zap --cask speechbutton    # and its settings and support files
```

`--zap` also removes `~/Library/Application Support/SpeechButton` and
`~/.config/speechbutton`.

## Requirements

- macOS 14 Sonoma or later
- Apple Silicon (M1 and later)

## How this tap stays current

`Casks/speechbutton.rb` pins an exact version and the SHA-256 of that release's disk
image, so Homebrew verifies the download. A scheduled workflow
(`.github/workflows/bump-cask.yml`) checks `speechbutton/speechbutton-dist` for a newer
release every six hours, downloads the disk image, computes the checksum and commits the
bump. It can also be run on demand from the Actions tab.

## Links

- Website: <https://speechbutton.com>
- Releases: <https://github.com/speechbutton/speechbutton-dist/releases>
- Support: <support@speechbutton.com>
