class PayRespects < Formula
  desc "CLI tool to pay respects"
  homepage "https://github.com/iffse/pay-respects"
  version "0.6.7"

  if Hardware::CPU.arm?
    url "https://github.com/iffse/pay-respects/releases/download/v0.6.7/pay-respects-0.6.7-aarch64-apple-darwin.tar.zst"
    sha256 "TO_BE_FILLED_IN_BY_GITHUB_ACTIONS"
  else
    url "https://github.com/iffse/pay-respects/releases/download/v0.6.7/pay-respects-0.6.7-x86_64-apple-darwin.tar.zst"
    sha256 "TO_BE_FILLED_IN_BY_GITHUB_ACTIONS"
  end

  def install
    bin.install "pay-respects"
    # Install required modules
    bin.install "_pay-respects-module-100-runtime-rules"
    bin.install "_pay-respects-fallback-100-request-ai"
  end

  test do
    system "#{bin}/pay-respects", "--version"
  end
end 