# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitAge < Formula
  desc "git-age is a smudge/clean filter to encrypt/decrypt files in a git repository transparently"
  homepage "https://github.com/prskr/git-age"
  version "0.1.6"
  license "MIT"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prskr/git-age/releases/download/v0.1.6/git-age_Darwin_arm64.tar.gz"
      sha256 "b9b858bf4f7664fa2b962f289360b1a52936ea4e7de6e7b29b1162cb1ad9c7c0"

      def install
        bin.install "git-age"
        man1.install "docs/git-age.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/prskr/git-age/releases/download/v0.1.6/git-age_Darwin_x86_64.tar.gz"
      sha256 "1e726fc3e671ae082fec252a5dc576fa96b1e31dbada1b027e8887b575ec432c"

      def install
        bin.install "git-age"
        man1.install "docs/git-age.1.gz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prskr/git-age/releases/download/v0.1.6/git-age_Linux_arm64.tar.gz"
      sha256 "6daf88c58fffb063ac2f14215dee2c756dd0d3c3ac6d07ce4b4b829e3e5c88d4"

      def install
        bin.install "git-age"
        man1.install "docs/git-age.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/prskr/git-age/releases/download/v0.1.6/git-age_Linux_x86_64.tar.gz"
      sha256 "457da0d3b96958b78e79f2295fc84128d330dd2ae9b3f90748b72cc3b9048bdf"

      def install
        bin.install "git-age"
        man1.install "docs/git-age.1.gz"
      end
    end
  end

  test do
    system "#{bin}/git-age --help"
  end
end
