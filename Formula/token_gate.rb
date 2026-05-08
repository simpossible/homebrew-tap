class TokenGate < Formula
  desc "Local proxy gateway for managing multiple Claude API keys"
  homepage "https://github.com/simpossible/token_gate"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/simpossible/token_gate/releases/download/v#{version}/token_gate_darwin_arm64.tar.gz"
      sha256 "a097ffbfe272f3d76322a6ef86713c3624c1237215d770853d11a7054bfd2f95"
    end
    on_intel do
      url "https://github.com/simpossible/token_gate/releases/download/v#{version}/token_gate_darwin_amd64.tar.gz"
      sha256 "ba709b58b3cc7df761cfdfc96c63e7c79ff2616f6661aaa416804bef8a4e69c0"
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
