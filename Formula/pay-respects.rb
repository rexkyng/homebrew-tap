class PayRespects < Formula
  desc "CLI tool to pay respects"
  homepage "https://github.com/iffse/pay-respects"
  version "0.6.8"

  if Hardware::CPU.arm?
    url "https://github.com/iffse/pay-respects/releases/download/v0.6.8/pay-respects-0.6.8-aarch64-apple-darwin.tar.zst"
    sha256 "bc99d8cd66aa22afce7677a8247c249d2b4867489cdcd812c0b716cd39b63177"
  else
    url "https://github.com/iffse/pay-respects/releases/download/v0.6.8/pay-respects-0.6.8-x86_64-apple-darwin.tar.zst"
    sha256 "dbd110d19e39f3fa3de995d93a355ed5320c9766386bd42785a4a5010f2d9593"
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
