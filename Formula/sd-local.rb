# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SdLocal < Formula
  desc "Screwdriver local mode."
  homepage "https://github.com/screwdriver-cd/sd-local"
  version "1.0.51"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/screwdriver-cd/sd-local/releases/download/v1.0.51/sd-local_darwin_amd64"
      sha256 "3040501865c8548929a252b4b1a4dfab2a4d8f52e9eb2197fc29abd94c537acb"

      def install
        bin.install File.basename(@stable.url) => "sd-local"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/screwdriver-cd/sd-local/releases/download/v1.0.51/sd-local_darwin_arm64"
      sha256 "40c16e88c07c8eff2524cf5e1214c80ddac2a90a6aba80c8b6c9c91b7606e406"

      def install
        bin.install File.basename(@stable.url) => "sd-local"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/screwdriver-cd/sd-local/releases/download/v1.0.51/sd-local_linux_amd64"
      sha256 "fa9b13dfc98dd81dd8f32827c1de3cfd8fb5b7e491d47cc15cf3b4c35f997f73"

      def install
        bin.install File.basename(@stable.url) => "sd-local"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/screwdriver-cd/sd-local/releases/download/v1.0.51/sd-local_linux_arm64"
      sha256 "69ed3d50f741a2398312eb6612270a2a6db50b1a8c01bac514993b679eb8fbe4"

      def install
        bin.install File.basename(@stable.url) => "sd-local"
      end
    end
  end

  test do
    system "#{bin}/sd-local", "--help"
  end
end
