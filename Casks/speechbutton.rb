cask "speechbutton" do
  version :latest
  sha256 :no_check

  url "https://github.com/speechbutton/speechbutton-dist/releases/latest/download/SpeechButton-release.dmg"
  name "SpeechButton"
  desc "Voice-to-text for macOS. Hold a hotkey, speak, release — text appears instantly."
  homepage "https://speechbutton.app"

  depends_on macos: ">= :sonoma"

  app "SpeechButton.app"

  livecheck do
    url "https://github.com/speechbutton/speechbutton-dist/releases/latest"
    strategy :header_match
    regex(%r{releases/tag/v?(\d+(?:\.\d+)+)}i)
  end

  zap trash: [
    "~/Library/Application Support/SpeechButton",
    "~/.config/speechbutton",
  ]
end
