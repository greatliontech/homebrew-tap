# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Semrel < Formula
  desc "Semantic Versioning and Conventional Commits release utility"
  homepage "https://github.com/greatliontech/semrel"
  version "0.2.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/greatliontech/semrel/releases/download/0.2.2/semrel_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "28a548b2e135383fac419e930a505aa7a2d3981d26863c3aae30e3463301f16a"

      def install
        bin.install "semrel"
        bash_completion.install "completions/semrel.bash" => "semrel"
        zsh_completion.install "completions/semrel.zsh" => "_semrel"
        fish_completion.install "completions/semrel.fish"
      end
    end
    on_arm do
      url "https://github.com/greatliontech/semrel/releases/download/0.2.2/semrel_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "8b876b456a7b60e42ef2ed5531029a22a72172ae7e22e6ace3090025a5e359f9"

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
        url "https://github.com/greatliontech/semrel/releases/download/0.2.2/semrel_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
        sha256 "035cc1cfdd9edaa6e0ac97aa9b7d504002cd2526452ca1c63fcca70923d4c77f"

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
        url "https://github.com/greatliontech/semrel/releases/download/0.2.2/semrel_Linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "41917d1ded9ef8581a0205f3329bfa7487ee133cbe9d3684e0813ad18324af11"

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
