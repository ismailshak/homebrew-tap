class Transit < Formula
  desc "CLI tool that interacts with local transit information"
  homepage "https://github.com/ismailshak/transit"
  version "1.2.1"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ismailshak/transit/releases/download/v#{version}/transit_Linux_x86_64.tar.gz"
    sha256 "8ce28d475d975d96b1fd9b432f5856ba3002aec36e89857d56f944d466099741"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/ismailshak/transit/releases/download/v#{version}/transit_Linux_arm64.tar.gz"
    sha256 "b57dc4029e37a8b6995d52851a81b2a6dd1b938aa96cc157274549606109f397"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ismailshak/transit/releases/download/v#{version}/transit_Darwin_x86_64.tar.gz"
    sha256 "ca52e2d1dd3cf37823e6f1768ef0dd06ffdc488dd8b882c2b838b7ea65cdcc63"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ismailshak/transit/releases/download/v#{version}/transit_Darwin_arm64.tar.gz"
    sha256 "46a7d8689f935980533492a06e832ae57d563d00b63a86643cb268cc7433912d"
  end

  def install
    bin.install "transit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/transit --version")
  end
end
