cask "token-gate" do
  version "0.2.7"
  sha256 "dfdc3926286825843e12f4967deb392d12b967535c392a05a7152293bc786c4f"

  url "https://github.com/simpossible/token_gate/releases/download/v#{version}/TokenGate-#{version}.dmg"
  name "Token Gate"
  desc "Local proxy gateway for managing multiple Claude API keys"
  homepage "https://github.com/simpossible/token_gate"

  depends_on macos: ">= :catalina"

  app "TokenGate.app"
end
