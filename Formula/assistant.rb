class Assistant < Formula
  desc "Keyboard-first local productivity assistant"
  homepage "https://github.com/AndrzejKrzywda00/assistant"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AndrzejKrzywda00/assistant/releases/download/v0.1.4/assistant_v0.1.4_Darwin_arm64.tar.gz"
      sha256 "2ef5bf767c5be0796ead2d177fb0d62ea199532e02056a8bea61b58ac00b5ce6"
    else
      url "https://github.com/AndrzejKrzywda00/assistant/releases/download/v0.1.4/assistant_v0.1.4_Darwin_x86_64.tar.gz"
      sha256 "c110dc4b37c101f37cc1b7b23f926cbdda50e85fd8ededf0697d51d5cee45686"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AndrzejKrzywda00/assistant/releases/download/v0.1.4/assistant_v0.1.4_Linux_arm64.tar.gz"
      sha256 "1f4f5dacea3f9c6ca9b1422de6790e1af92cc0d95f7b498900a1978019f411fc"
    else
      url "https://github.com/AndrzejKrzywda00/assistant/releases/download/v0.1.4/assistant_v0.1.4_Linux_x86_64.tar.gz"
      sha256 "87b9e81ff2099e888e9b694aa53a1a391ae00d9d91fe419fdbb5d6be268fac0a"
    end
  end

  def install
    bin.install "assistant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/assistant version")
  end
end
