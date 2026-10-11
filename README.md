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

### FryPDF (PDF Editor & Automation)

Modular PDF editor and document automation workspace for macOS (Apple Silicon).

```bash
# Add the tap and install FryPDF
brew install --cask prashantunity/tap/frypdf
```

Or tap first, then install:

```bash
brew tap prashantunity/tap
brew install --cask frypdf
```

## macOS Gatekeeper / Quarantine Notice

Because these applications are self-signed during development, macOS Gatekeeper may prevent them from opening with a warning such as:
> *"App cannot be opened because Apple cannot check it for malicious software"* or *"App is damaged and can't be opened. You should move it to the Trash."*

### Option 1: Remove the Quarantine Attribute (Recommended)

Run the following command in Terminal after installing:

```bash
# For FrySharp
xattr -dr com.apple.quarantine /Applications/FrySharp.app

# For FryPDF
xattr -dr com.apple.quarantine /Applications/FryPDF.app
```

### Option 2: Install with `--no-quarantine`

You can tell Homebrew not to apply the quarantine attribute during installation:

```bash
# For FrySharp
brew install --cask --no-quarantine prashantunity/tap/frysharp

# For FryPDF
brew install --cask --no-quarantine prashantunity/tap/frypdf
```

Alternatively, navigate to **System Settings > Privacy & Security** and click **Open Anyway** next to the blocked app.

## Updating

To update installed casks:

```bash
brew update
brew upgrade --cask
```

## Available Casks

| Cask | Description | Version |
|---|---|---|
| [`frysharp`](Casks/frysharp.rb) | Interactive C# development studio & script automation | `2.0.4` |
| [`frypdf`](Casks/frypdf.rb) | Modular PDF editor & document automation workspace | `0.1.1` |

## License

MIT
