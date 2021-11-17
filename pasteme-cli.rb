class PastemeCli < Formula
  tag = "v0.1"
  
  desc "CLI client for the Paste.me service"
  homepage "https://paste.me"
  version tag
  depends_on :arch => :x86_64
  
  if OS.mac?
    url "https://github.com/0x111/pasteme-cli/releases/download/#{version}/pasteme-cli-darwin-amd64"
    sha256 "c74d7933ee2059152c91ad9ec05a44b2e2677aafb4f911ec5470f558e8d31531"
  elsif OS.linux?
    url "https://github.com/0x111/pasteme-cli/releases/download/#{version}/pasteme-cli-linux-amd64"
    sha256 "ca1e37c40c3bb4aeefd3ea7048e65001292d4b552c591d531cf404a5362d6f5c"
  end
  
  def install
    bin.install Dir.glob("pasteme-cli*").first => "pasteme-cli"
  end

  test do
    system "false"
  end
end

