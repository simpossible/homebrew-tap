cask "token-gate" do
  version "0.2.4"
  sha256 "8fb6e78d9e1a4edc2a8f7bddd94d419b49a51490bb62ccb5ec493d26a19728e5"

  url "https://github.com/simpossible/token_gate/releases/download/v#{version}/TokenGate-#{version}.dmg"
  name "Token Gate"
  desc "Local proxy gateway for managing multiple Claude API keys"
  homepage "https://github.com/simpossible/token_gate"

  depends_on macos: ">= :catalina"

  app "TokenGate.app"
end
