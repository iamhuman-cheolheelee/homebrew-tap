class Ctx < Formula
  desc "Context-compressing CLI for AI coding agents"
  homepage "https://ctx.ferrorium.com"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iamhuman-cheolheelee/ctx/releases/download/v0.1.0/ctx-aarch64-apple-darwin.tar.gz"
      sha256 "c0bccbd9e01f9ca3a8ca5d71f8ea7fdafefd58c8de300904c567b08760e5fa6a"
    end
    on_intel do
      url "https://github.com/iamhuman-cheolheelee/ctx/releases/download/v0.1.0/ctx-x86_64-apple-darwin.tar.gz"
      sha256 "ecc96e852a412f0a985394c0d6ed7511dff65b6bcce57157f82430f57c441c9a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/iamhuman-cheolheelee/ctx/releases/download/v0.1.0/ctx-aarch64-unknown-linux-musl.tar.gz"
      sha256 "95dbbc063175689517906849c55d535663cda2918446ddfe09be86f9ba972277"
    end
    on_intel do
      url "https://github.com/iamhuman-cheolheelee/ctx/releases/download/v0.1.0/ctx-x86_64-unknown-linux-musl.tar.gz"
      sha256 "778f61b16b5d1c0c65769bd498141f1bff2008614033b350b1633ba6fe60cd91"
    end
  end

  def install
    bin.install "ctx"
  end

  test do
    assert_match "ctx 0.1.0", shell_output("#{bin}/ctx --version")
  end
end
