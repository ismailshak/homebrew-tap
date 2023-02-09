class Transit < Formula
  desc "CLI tool that interacts with local transit information"
  homepage "https://github.com/ismailshak/transit"
  version "1.1.0"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ismailshak/transit/releases/download/v#{version}/transit_Linux_x86_64.tar.gz"
    sha256 "9f9d8ec61db07e328d5c7d7774d1c4585f36e7382f5e47ce36ab68e7cab3a7de"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/ismailshak/transit/releases/download/v#{version}/transit_Linux_arm64.tar.gz"
    sha256 "9a81fa8352454beb1873d6b52c7bdd4991a6d5145f58a902b61e25d83fd85aad"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ismailshak/transit/releases/download/v#{version}/transit_Darwin_x86_64.tar.gz"
    sha256 "d8b8629d1f19f8058335622f040fda1a5c3b148ef49e6dd1b1d948ee049973fe"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ismailshak/transit/releases/download/v#{version}/transit_Darwin_arm64.tar.gz"
    sha256 "cb04bd254264258983be5ca9a9704aa1b4860ca607cfe29b8563fc645b7376a4"
  end

  def install
    bin.install "transit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/transit --version")
  end
end
