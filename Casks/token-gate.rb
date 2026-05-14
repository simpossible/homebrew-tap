cask "token-gate" do
  version "0.2.5"
  sha256 "a5a5317901a719b34590e17652279a87df528302d434e449da8aa75677ee0df2"

  url "https://github.com/simpossible/token_gate/releases/download/v#{version}/TokenGate-#{version}.dmg"
  name "Token Gate"
  desc "Local proxy gateway for managing multiple Claude API keys"
  homepage "https://github.com/simpossible/token_gate"

  depends_on macos: ">= :catalina"

  app "TokenGate.app"
end
