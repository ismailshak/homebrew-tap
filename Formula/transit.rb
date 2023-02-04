class Transit < Formula
  desc "CLI tool that interacts with local transit information"
  homepage "https://github.com/ismailshak/transit"
  version "0.4.1"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ismailshak/transit/releases/download/v#{version}/transit_Linux_x86_64.tar.gz"
    sha256 "591bfb6aa52fd473d19a46ef773044b34d33fc066081f196aadc1a68337ceae6"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/ismailshak/transit/releases/download/v#{version}/transit_Linux_arm64.tar.gz"
    sha256 "8a6b661cf6b5fd106b635126bdcda0c65d7ceaae17bd8d8a89306de40f3d2bc7"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ismailshak/transit/releases/download/v#{version}/transit_Darwin_x86_64.tar.gz"
    sha256 "c5dd7845370a6bb3a2597b1fe58b4820b2a7d8a7187cad82b31ef9497ec02ddf"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ismailshak/transit/releases/download/v#{version}/transit_Darwin_arm64.tar.gz"
    sha256 "35132c39006edd1f72e2c13bfc9826b40a13a6d4ee2873cdb30f6b986b8f75c1"
  end

  def install
    bin.install "transit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/transit --version")
  end
end
