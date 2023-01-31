class Transit < Formula
  desc "CLI tool that interacts with local transit information"
  homepage "https://github.com/ismailshak/transit"
  sha256 "62f173b11fbaca7c7fa20fa449047a7f94b0c965d08e15e955b12e7ae483bae0"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ismailshak/transit/releases/download/v0.2.0/transit_Linux_x86_64.tar.gz"
    sha256 "39f7d998b1205b3a7b72cfeb18c5a8483cb8602b318f5b1fcac249d3895f3652"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/ismailshak/transit/releases/download/v0.2.0/transit_Linux_arm64.tar.gz"
    sha256 "bc6d3c5dcb98be5792e5dec3c4efb087dcf8803f824dc8d08a8bbc0ee8530b36"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ismailshak/transit/releases/download/v0.2.0/transit_Darwin_arm64.tar.gz"
    sha256 "62f173b11fbaca7c7fa20fa449047a7f94b0c965d08e15e955b12e7ae483bae0"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ismailshak/transit/releases/download/v0.2.0/transit_Darwin_x86_64.tar.gz"
    sha256 "30da1b37b0f6335262ed9a44802127dcd91156f028c6a6926b2d38cf7333b319"
  end

  def install
    bin.install "transit"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/transit --version")
  end
end
