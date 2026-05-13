cask "token-gate" do
  version "0.2.3"
  sha256 "0abc1e9dd19099eb34e8430919af0131f71a21f1d283dca5c4c24c1094e73cd6"

  url "https://github.com/simpossible/token_gate/releases/download/v#{version}/TokenGate-#{version}.dmg"
  name "Token Gate"
  desc "Local proxy gateway for managing multiple Claude API keys"
  homepage "https://github.com/simpossible/token_gate"

  depends_on macos: ">= :catalina"

  app "TokenGate.app"
end
