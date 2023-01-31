# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
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
    # ENV.deparallelize  # if your formula fails when building in parallel
    #system "go", "build", *std_go_args(ldflags: "-s -w")
    bin.install "transit"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test transit`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    assert_match "0.2.0", shell_output("#{bin}/transit --version")
  end
end
