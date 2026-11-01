cask "speechbutton" do
  version "2.14.0"
  sha256 "fc17994d21f65807fae10fadaefcd4f4a6496ebd590a71891d0a9502313c232d"

  url "https://github.com/speechbutton/speechbutton-dist/releases/download/v#{version}/SpeechButton-release.dmg",
      verified: "github.com/speechbutton/speechbutton-dist/"
  name "SpeechButton"
  desc "Voice-to-text for macOS. Hold a hotkey, speak, release — text appears instantly."
  homepage "https://speechbutton.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "SpeechButton.app"

  zap trash: [
    "~/Library/Application Support/SpeechButton",
    "~/.config/speechbutton",
  ]
end
