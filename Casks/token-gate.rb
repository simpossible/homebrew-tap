cask "token-gate" do
  version "0.2.6"
  sha256 "8226a615ae8bd8753432ccf3dea86621be978ebc938452818eaed91709c4f8b8"

  url "https://github.com/simpossible/token_gate/releases/download/v#{version}/TokenGate-#{version}.dmg"
  name "Token Gate"
  desc "Local proxy gateway for managing multiple Claude API keys"
  homepage "https://github.com/simpossible/token_gate"

  depends_on macos: ">= :catalina"

  app "TokenGate.app"
end
