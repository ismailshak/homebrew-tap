class Transit < Formula
  desc "CLI tool that interacts with local transit information"
  homepage "https://github.com/ismailshak/transit"
  version "1.2.0"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ismailshak/transit/releases/download/v#{version}/transit_Linux_x86_64.tar.gz"
    sha256 "c27a499d0492d18c733d84c12cb720bf80ef80ae82aa9823ffe1a32a44072f01"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/ismailshak/transit/releases/download/v#{version}/transit_Linux_arm64.tar.gz"
    sha256 "ff172d4ea3613be2c082c8c5f33994cfe3328d0e8b43bb6a299aff0a24be8ae7"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ismailshak/transit/releases/download/v#{version}/transit_Darwin_x86_64.tar.gz"
    sha256 "84a476a6611884718bc3b362f1becc75f68da416b01c2a76850afba9e8259b1a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ismailshak/transit/releases/download/v#{version}/transit_Darwin_arm64.tar.gz"
    sha256 "155fbe4f921b4fbd1867a8f5a3e40347c4089f6bced28ed2026b5ee4f5712121"
  end

  def install
    bin.install "transit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/transit --version")
  end
end
