# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Adocsnip < Formula
  desc "manage vscode-style snippets in asciidoc"
  homepage "https://github.com/greatliontech/adocsnip"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/greatliontech/adocsnip/releases/download/0.0.1/adocsnip_0.0.1_Darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "e8da90be7d16fe18b444549bc0a9ed9830694a525c5a3038c1276e3fe4830d37"

      def install
        bin.install "adocsnip"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/greatliontech/adocsnip/releases/download/0.0.1/adocsnip_0.0.1_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "a5315eea4f0f5c11f250852852816cc1e9fa937a88d80585e16ccfe9fec0bec8"

      def install
        bin.install "adocsnip"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/greatliontech/adocsnip/releases/download/0.0.1/adocsnip_0.0.1_Linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "20057eea1043e41c445067c620a39440cb553bf3db6ba73a4aae9bf88a666290"

      def install
        bin.install "adocsnip"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/greatliontech/adocsnip/releases/download/0.0.1/adocsnip_0.0.1_Linux_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "0f839a855b86f060c95a6d55a8dcd7025aa3d8fcea97f40c9bf522cc542961b8"

      def install
        bin.install "adocsnip"
      end
    end
  end
end
