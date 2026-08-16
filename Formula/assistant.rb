class Assistant < Formula
  desc "Keyboard-first local productivity assistant"
  homepage "https://github.com/AndrzejKrzywda00/assistant"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AndrzejKrzywda00/assistant/releases/download/v0.1.1/assistant_v0.1.1_Darwin_arm64.tar.gz"
      sha256 "687598383bebc9873831764e0583c4644860f0b3a1cce059e63a3abe721c8478"
    else
      url "https://github.com/AndrzejKrzywda00/assistant/releases/download/v0.1.1/assistant_v0.1.1_Darwin_x86_64.tar.gz"
      sha256 "580ee9d6b1b5551027aea8eb1dd18a561667cb066c66afaa137c8382b21f4d70"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AndrzejKrzywda00/assistant/releases/download/v0.1.1/assistant_v0.1.1_Linux_arm64.tar.gz"
      sha256 "46c0dcd824cd574222064725e7e3b9e97164d2be7f48f1af2fb87fdf66b3ffeb"
    else
      url "https://github.com/AndrzejKrzywda00/assistant/releases/download/v0.1.1/assistant_v0.1.1_Linux_x86_64.tar.gz"
      sha256 "07d83b5bda86ca5cdfa57ca935ecf47d9cccca058a8602f8862ab078b8dfe6ab"
    end
  end

  def install
    bin.install "assistant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/assistant version")
  end
end
