class PastemeCli < Formula
  tag = "v0.1"
  
  desc "CLI client for the Paste.me service"
  homepage "https://paste.me"
  version tag
  depends_on :arch => :x86_64
  
  if OS.mac?
    url "https://github.com/0x111/pasteme-cli/releases/download/#{version}/pasteme-cli-darwin-amd64"
    sha256 "02545301bcff79daa41a3ca5cd3ca46cf0fe3bdb9adb82383c71d49268c1dc2c"
  elsif OS.linux?
    url "https://github.com/0x111/pasteme-cli/releases/download/#{version}/pasteme-cli-linux-amd64"
    sha256 "8563866c31de32bcc70014d46095f9f937dad8c4f750441f86ae99dfb47313db"
  end
  
  def install
    bin.install Dir.glob("pasteme-cli*").first => "pasteme-cli"
  end

  bottle :unneeded

  test do
    system "false"
  end
end

