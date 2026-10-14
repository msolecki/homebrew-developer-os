class DeveloperOs < Formula
  desc "Shared workflows and a local-first knowledge base for Claude Code and Codex"
  homepage "https://github.com/msolecki/developer-os"
  version "0.0.0"
  license "MIT"
  on_arm do
    url "https://github.com/msolecki/developer-os/releases/download/v0.0.0/developer-os-0.0.0-darwin-arm64.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end
  on_intel do
    url "https://github.com/msolecki/developer-os/releases/download/v0.0.0/developer-os-0.0.0-darwin-x64.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end
  depends_on :macos

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/developer-os --version")
  end
end
