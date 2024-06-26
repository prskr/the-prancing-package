# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitAgeKeyringAgent < Formula
  desc "git-age agent to store and load identities from your OS' keyring
"
  homepage "https://github.com/prskr/git-age-keyring-agent"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/prskr/git-age-keyring-agent/releases/download/v0.1.1/git-age-keyring-agent_Darwin_x86_64.tar.gz"
      sha256 "8485282e7553beee3859e22a62a1950542fe71c4313f108df27ed8f4c471e399"

      def install
        bin.install "git-age-keyring-agent"
      end
    end
    on_arm do
      url "https://github.com/prskr/git-age-keyring-agent/releases/download/v0.1.1/git-age-keyring-agent_Darwin_arm64.tar.gz"
      sha256 "d582ce81148f67c80f128f719977b7c789616d175a364c82d6546f57894cf708"

      def install
        bin.install "git-age-keyring-agent"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/prskr/git-age-keyring-agent/releases/download/v0.1.1/git-age-keyring-agent_Linux_x86_64.tar.gz"
        sha256 "ce538dc95093c424315741fdf2efb7d307babd7686563488e671f91e3016f0fb"

        def install
          bin.install "git-age-keyring-agent"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/prskr/git-age-keyring-agent/releases/download/v0.1.1/git-age-keyring-agent_Linux_arm64.tar.gz"
        sha256 "ea8e1372087f0ae844643e84a6afd5894b94c10a7b8b80e6e4d41b7a0c7eb973"

        def install
          bin.install "git-age-keyring-agent"
        end
      end
    end
  end

  service do
    run [opt_bin/"git-age-keyring-agent"]
    keep_alive: true
  end

  test do
    system "#{bin}/git-age-keyring-agent --help"
  end
end
