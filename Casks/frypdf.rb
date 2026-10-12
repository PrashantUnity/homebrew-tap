cask "frypdf" do
  version "0.1.2"
  sha256 "70c1e2243e53f9ce3826f7e4b498bc2d0082a14f4b6ca523653d1b8d79604660"

  url "https://github.com/codefrydev/frypdf/releases/download/v#{version}/FryPDF-#{version}-arm64.dmg"
  name "FryPDF"
  desc "Modular PDF editor and document automation workspace"
  homepage "https://codefrydev.in/frypdf/"

  depends_on arch: :arm64
  depends_on :macos

  app "FryPDF.app"

  zap trash: [
    "~/Library/Application Support/FryPDF",
    "~/Library/Preferences/in.codefrydev.frypdf.plist",
    "~/Library/Saved Application State/in.codefrydev.frypdf.savedState",
  ]
end
