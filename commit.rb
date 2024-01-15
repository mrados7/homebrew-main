# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Commit < Formula
  desc "Commit is a tool for commiting changes with naming convention"
  homepage "https://github.com/mrados7/homebrews"
  version "0.0.25"
  license "MIT"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.25/go-git-commands_0.0.25_darwin_arm64.tar.gz"
      sha256 "816ebcb297bedba511539c8e9251de0929c945c187517b877f36f332dd578fc6"

      def install
        bin.install "commit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.25/go-git-commands_0.0.25_darwin_amd64.tar.gz"
      sha256 "8c5f02a98077a755297df5d54fadaa0c7653dcbc4bd74a31c50778219b1fbf0c"

      def install
        bin.install "commit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.25/go-git-commands_0.0.25_linux_armv6.tar.gz"
      sha256 "2b806c0e6fd26e7fe46e1137706080af90b18f3a0a264e137e975f8b658cebb4"

      def install
        bin.install "commit"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.25/go-git-commands_0.0.25_linux_arm64.tar.gz"
      sha256 "900fe0465de3349e9c7a4ae6f44b3b66b5dc91bc1195bbe39f971547a1d5c15a"

      def install
        bin.install "commit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.25/go-git-commands_0.0.25_linux_amd64.tar.gz"
      sha256 "343327e862213c53ae7d8592a3f3360f0b55ed2a5ab50fe70c8b0d8c03d5f23c"

      def install
        bin.install "commit"
      end
    end
  end

  test do
    system "#{bin}/commit", "-help"
  end
end
