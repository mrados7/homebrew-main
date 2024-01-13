# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Commit < Formula
  desc "Commit is a tool for commiting changes with naming convention"
  homepage "https://github.com/mrados7/homebrews"
  version "0.0.19"
  license "MIT"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.19/go-git-commands_0.0.19_darwin_arm64.tar.gz"
      sha256 "d738796442a4352cdca19812471a1af3835df344d13767145c7c06d538ae8120"

      def install
        bin.install "commit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.19/go-git-commands_0.0.19_darwin_amd64.tar.gz"
      sha256 "1fb6f40c0118f9d248724e2ca65f15f401ee038ed1c7444883f4cfe23138e887"

      def install
        bin.install "commit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.19/go-git-commands_0.0.19_linux_armv6.tar.gz"
      sha256 "3542519835baec097740df465b8dd6ac1e424b515c68f582155abef8cb776f7f"

      def install
        bin.install "commit"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.19/go-git-commands_0.0.19_linux_arm64.tar.gz"
      sha256 "2a35430a1244ab75223e12f1f5e9479a9bf5eff0b0416587267b1ba616d76daa"

      def install
        bin.install "commit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.19/go-git-commands_0.0.19_linux_amd64.tar.gz"
      sha256 "9daa671ddc9c3a79e3c5927cac0dc3683f28be9065fd41082d5d22884bd867f6"

      def install
        bin.install "commit"
      end
    end
  end

  test do
    system "#{bin}/commit", "-help"
  end
end
