cask "frysharp" do
  version "2.0.3"
  sha256 "ee97bed9f84ab8525c01f7f61fffa7d76ca735066ad86573611c8121ec4e8342"

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
