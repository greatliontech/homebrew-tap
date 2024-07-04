# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Semrel < Formula
  desc "Semantic Versioning and Conventional Commits release utility"
  homepage "https://github.com/greatliontech/semrel"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/greatliontech/semrel/releases/download/0.2.0/semrel_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "4abb07dcb2f84e3ed1edc8da4d5695df2d7cceda52b7e656528be18466d2cbe8"

      def install
        bin.install "semrel"
        bash_completion.install "completions/semrel.bash" => "semrel"
        zsh_completion.install "completions/semrel.zsh" => "_semrel"
        fish_completion.install "completions/semrel.fish"
      end
    end
    on_arm do
      url "https://github.com/greatliontech/semrel/releases/download/0.2.0/semrel_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3c708c26ad841d468b42b6df61fb9ac6a00ee2f2588d2d858fd3730fde6cfb72"

      def install
        bin.install "semrel"
        bash_completion.install "completions/semrel.bash" => "semrel"
        zsh_completion.install "completions/semrel.zsh" => "_semrel"
        fish_completion.install "completions/semrel.fish"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/greatliontech/semrel/releases/download/0.2.0/semrel_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
        sha256 "1441d07fc6aa9104b3e14f61813305237793fccf63c53c5363cdffc22b11d1d2"

        def install
          bin.install "semrel"
          bash_completion.install "completions/semrel.bash" => "semrel"
          zsh_completion.install "completions/semrel.zsh" => "_semrel"
          fish_completion.install "completions/semrel.fish"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/greatliontech/semrel/releases/download/0.2.0/semrel_Linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "614459a34425b6b10aee5ea4b9927c007be23eba6898d4bc4591c2e423ed231b"

        def install
          bin.install "semrel"
          bash_completion.install "completions/semrel.bash" => "semrel"
          zsh_completion.install "completions/semrel.zsh" => "_semrel"
          fish_completion.install "completions/semrel.fish"
        end
      end
    end
  end
end
