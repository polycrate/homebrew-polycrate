# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Polycrate < Formula
  desc "Polycrate is a framework to build platforms."
  homepage "https://www.ayedo.de/"
  version "0.7.8"
  license "Apache 2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/polycrate/polycrate/releases/download/v0.7.8/polycrate_0.7.8_darwin_arm64.tar.gz"
      sha256 "3c94ff1f9ecd34bc569e4061bdc3b4316d1630c40a6b0321d289fcf48c3fec63"

      def install
        bin.install "polycrate"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/polycrate/polycrate/releases/download/v0.7.8/polycrate_0.7.8_darwin_amd64.tar.gz"
      sha256 "1d9618f1e9d49aa403ec28d02c268702a8743f12b233a7147221cdadf070f793"

      def install
        bin.install "polycrate"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/polycrate/polycrate/releases/download/v0.7.8/polycrate_0.7.8_linux_arm64.tar.gz"
      sha256 "9c1291b42d17a15d57e93fb0849f1eed65d37ae054ad92530c14eade2080fa5e"

      def install
        bin.install "polycrate"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/polycrate/polycrate/releases/download/v0.7.8/polycrate_0.7.8_linux_amd64.tar.gz"
      sha256 "c7d655c5f7cdfc3b88b7d86a0b7b27cd8aa284318f2f1dd11e47dd3c102366cf"

      def install
        bin.install "polycrate"
      end
    end
  end

  depends_on "docker" => :optional
end
