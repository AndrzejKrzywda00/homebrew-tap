class Assistant < Formula
  desc "Keyboard-first local productivity assistant"
  homepage "https://github.com/AndrzejKrzywda00/assistant"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AndrzejKrzywda00/assistant/releases/download/v0.1.2/assistant_v0.1.2_Darwin_arm64.tar.gz"
      sha256 "6f07a80637176ac0767f623b3610f86f7a19a79e89efbc21e7d652cc4d9a983c"
    else
      url "https://github.com/AndrzejKrzywda00/assistant/releases/download/v0.1.2/assistant_v0.1.2_Darwin_x86_64.tar.gz"
      sha256 "b7f5959daae7417537dbf8f5cdbf005e9988d8e58102673691179d526d6ba91b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AndrzejKrzywda00/assistant/releases/download/v0.1.2/assistant_v0.1.2_Linux_arm64.tar.gz"
      sha256 "91c44b62c5ed79019c35cf4b8d480fb6630e1ad7199b8eb4b38a9c78a117ff0a"
    else
      url "https://github.com/AndrzejKrzywda00/assistant/releases/download/v0.1.2/assistant_v0.1.2_Linux_x86_64.tar.gz"
      sha256 "5c2b0bdc717b9a438f6104bbb9af1c9d06cbbe75156edbee91cf4eb9425ae222"
    end
  end

  def install
    bin.install "assistant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/assistant version")
  end
end
