cask "token-gate" do
  version "0.2.2"
  sha256 "2e1deeeb645e3d3c9a0c3f8f2bf2bf9488583751b5bb12be9b51c77cb430f372"

  url "https://github.com/simpossible/token_gate/releases/download/v#{version}/TokenGate-#{version}.dmg"
  name "Token Gate"
  desc "Local proxy gateway for managing multiple Claude API keys"
  homepage "https://github.com/simpossible/token_gate"

  depends_on macos: ">= :catalina"

  app "app.app"
end
