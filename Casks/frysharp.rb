cask "frysharp" do
  version "2.0.8"
  sha256 "83dac84346761c8ff76b191baeca216f0823961c78602f9eb97ad74906c3e10a"

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
