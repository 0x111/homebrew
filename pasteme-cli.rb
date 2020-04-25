class PastemeCli < Formula
  desc "CLI client for the Paste.me service"
  homepage "https://paste.me"
  url "https://github.com/0x111/pasteme-cli/releases/download/v0.0.2/pasteme-cli-darwin-amd64"
  sha256 "0b8ee6adfa833b4a54168e49400ff71553c53119f00710913de5af0370a16d68"
  depends_on :arch => :x86_64

  def install
    bin.install Dir.glob("pasteme-cli*").first => "pasteme-cli"
  end

  bottle :unneeded

  test do
    system "false"
  end
end

