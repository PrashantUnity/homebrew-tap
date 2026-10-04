# PrashantUnity Homebrew Tap

Official Homebrew Tap for [FrySharp](https://github.com/codefrydev/PDFCreator-resources) and FryPDF ecosystem tools.

## Installation

### FrySharp (C# Code Studio)

Interactive C# development studio and script automation workspace for macOS (Apple Silicon).

```bash
# Add the tap and install FrySharp
brew install --cask prashantunity/tap/frysharp
```

Or tap first, then install:

```bash
brew tap prashantunity/tap
brew install --cask frysharp
```

## Updating

To update installed casks:

```bash
brew update
brew upgrade --cask frysharp
```

## Available Casks

| Cask | Description | Version |
|---|---|---|
| [`frysharp`](Casks/frysharp.rb) | Interactive C# development studio & script automation | `2.0.3` |

## License

MIT
