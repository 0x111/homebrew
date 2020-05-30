class PastemeCli < Formula
  git_tag "v0.0.2"
  
  desc "CLI client for the Paste.me service"
  homepage "https://paste.me"
  v git_tag
  depends_on :arch => :x86_64
  
  if OS.mac?
    url "https://github.com/0x111/pasteme-cli/releases/download/#{v}/pasteme-cli-darwin-amd64"
    sha256 "0b8ee6adfa833b4a54168e49400ff71553c53119f00710913de5af0370a16d68"
  elsif OS.linux?
    url "https://github.com/0x111/pasteme-cli/releases/download/#{v}/pasteme-cli-linux-amd64"
    sha256 "ed3bbb6758b624d8d025229e6593f3c76562d059dacfbaf61befd1fa10dd249d"
  end
  
  def install
    bin.install Dir.glob("pasteme-cli*").first => "pasteme-cli"
  end

  bottle :unneeded

  test do
    system "false"
  end
end

