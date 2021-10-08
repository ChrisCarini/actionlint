# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Actionlint < Formula
  desc "Static checker for GitHub Actions workflow files"
  homepage "https://github.com/rhysd/actionlint#readme"
  version "1.6.5"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhysd/actionlint/releases/download/v1.6.5/actionlint_1.6.5_darwin_arm64.tar.gz"
      sha256 "ff222e3f463a63fdf06f800a69ff2aab216cd425d394a6087c98a31b80a3be3a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/rhysd/actionlint/releases/download/v1.6.5/actionlint_1.6.5_darwin_amd64.tar.gz"
      sha256 "9d8d1fa0738390338a3ac2522d6fada70361b3e9c770c1f05ea839381ed58a72"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rhysd/actionlint/releases/download/v1.6.5/actionlint_1.6.5_linux_arm64.tar.gz"
      sha256 "552656996b8d256c2dd9bf3238ef1d5568f613c0472e4872afbedb118004508d"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/rhysd/actionlint/releases/download/v1.6.5/actionlint_1.6.5_linux_armv6.tar.gz"
      sha256 "7fe8c2e9966b273f9505ae8664d724311c98f8f2696673a61c845d577cef61d7"
    end
    if Hardware::CPU.intel?
      url "https://github.com/rhysd/actionlint/releases/download/v1.6.5/actionlint_1.6.5_linux_amd64.tar.gz"
      sha256 "c53921555c03728bd0e79c34852c522bb34e042de31c014ddb33db0f4ac70ab5"
    end
  end

  def install
    bin.install "actionlint"
    man1.install "man/actionlint.1"
  end

  test do
    system "#{bin}/actionlint -version"
  end
end
