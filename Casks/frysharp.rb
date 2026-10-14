cask "frysharp" do
  version "2.0.5"
  sha256 "0f45e19a5f4591c2017d12f243c89e6deb943fdd41024c3feff75c81ab1509ad"

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
