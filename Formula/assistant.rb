class Assistant < Formula
  desc "Keyboard-first local productivity assistant"
  homepage "https://github.com/AndrzejKrzywda00/assistant"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AndrzejKrzywda00/assistant/releases/download/v0.1.3/assistant_v0.1.3_Darwin_arm64.tar.gz"
      sha256 "530de57fbbf2532c58ba4c8c74456ecb497509959a6f348b8627cec03c2c04a6"
    else
      url "https://github.com/AndrzejKrzywda00/assistant/releases/download/v0.1.3/assistant_v0.1.3_Darwin_x86_64.tar.gz"
      sha256 "201bdddedd4954145813157cecb283b7e1729ef01a64f0e08e85849f58f5485f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AndrzejKrzywda00/assistant/releases/download/v0.1.3/assistant_v0.1.3_Linux_arm64.tar.gz"
      sha256 "4a3ce31c59702dd57512b55ec40c587c6d5061e1ececb70781c153683de5a53f"
    else
      url "https://github.com/AndrzejKrzywda00/assistant/releases/download/v0.1.3/assistant_v0.1.3_Linux_x86_64.tar.gz"
      sha256 "513bf7a386fcc5c3cbdcc6f3735f8d61c04b530ff6224e203330b4aedeefe6b7"
    end
  end

  def install
    bin.install "assistant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/assistant version")
  end
end
