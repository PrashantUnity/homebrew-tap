cask "frysharp" do
  version "2.0.6"
  sha256 "5c5eb2879d23f8606317f25d641bd501948f3a513e3c379fa63b3a5326e63869"

  url "https://github.com/codefrydev/PDFCreator-resources/releases/download/v#{version}/FrySharp-#{version}-arm64.dmg"
  name "FrySharp"
  desc "Interactive C# development studio and script automation workspace"
  homepage "https://github.com/codefrydev/PDFCreator-resources"

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "FrySharp.app"

  zap trash: [
    "~/Library/Application Support/FrySharp",
    "~/Library/Preferences/in.codefrydev.frysharp.plist",
    "~/Library/Saved Application State/in.codefrydev.frysharp.savedState",
  ]
end
