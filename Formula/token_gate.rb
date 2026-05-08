class TokenGate < Formula
  desc "Local proxy gateway for managing multiple Claude API keys"
  homepage "https://github.com/simpossible/token_gate"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/simpossible/token_gate/releases/download/v#{version}/token_gate_darwin_arm64.tar.gz"
      sha256 "e42083b90fa9e237d2149104f71a9251273b10fa35f10e532c922ba0fcdd4aba"
    end
    on_intel do
      url "https://github.com/simpossible/token_gate/releases/download/v#{version}/token_gate_darwin_amd64.tar.gz"
      sha256 "1f2d50a30cf074b5cf8cc883e186a82924be1eaa82b4ec3229adf413efa99ca3"
    end
  end

  def install
    on_arm do
      bin.install "token_gate_darwin_arm64" => "token_gate"
    end
    on_intel do
      bin.install "token_gate_darwin_amd64" => "token_gate"
    end
  end

  service do
    run [opt_bin/"token_gate", "server"]
    keep_alive true
  end

  def caveats
    <<~EOS
      Run Token Gate:
        token_gate start    # start in background and open browser
        token_gate stop     # stop the background process
        token_gate show     # open the web interface
        token_gate status   # check if running

      Or start automatically on login:
        brew services start token_gate

      Web interface: http://127.0.0.1:12123
      Logs: ~/.token_gate/logs/token_gate.log
    EOS
  end
end
