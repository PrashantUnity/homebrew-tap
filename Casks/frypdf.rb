cask "frypdf" do
  version "0.1.1"
  sha256 "0641e5c66b554fa6891c57dce72d59c850d174088c22dab82b0924907956b002"

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
