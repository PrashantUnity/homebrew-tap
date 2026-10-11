cask "frysharp" do
  version "2.0.4"
  sha256 "32b753b5aa1a8d81ef77718aa31dd57e264d55d8c08f6cbe1142d6a7968076f5"

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
