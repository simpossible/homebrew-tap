cask "token-gate" do
  version "0.2.1"
  sha256 "8c2bf33d17e797318b7a22c23a65f8143139e2ba1d892a0de2c2e6ba4e3a6e5e"

  url "https://github.com/simpossible/token_gate/releases/download/v#{version}/TokenGate-#{version}.dmg"
  name "Token Gate"
  desc "Local proxy gateway for managing multiple Claude API keys"
  homepage "https://github.com/simpossible/token_gate"

  depends_on macos: ">= :catalina"

  app "app.app"
end
