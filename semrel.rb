# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Semrel < Formula
  desc "Semantic Versioning and Conventional Commits release utility"
  homepage "https://github.com/greatliontech/semrel"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/greatliontech/semrel/releases/download/0.1.3/semrel_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "856439120fceb7c1714604c5c21fd21d8086c341e23acfe93964105d9d7fde28"

      def install
        bin.install "semrel"
        bash_completion.install "completions/semrel.bash" => "semrel"
        zsh_completion.install "completions/semrel.zsh" => "_semrel"
        fish_completion.install "completions/semrel.fish"
      end
    end
    on_arm do
      url "https://github.com/greatliontech/semrel/releases/download/0.1.3/semrel_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "789b2db5bb76f160c8078106cdec3b511b827cf936b1a2bc94ae1c303a167871"

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
        url "https://github.com/greatliontech/semrel/releases/download/0.1.3/semrel_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
        sha256 "cb605e9d4af211f323e199d86039f871605f940af22465785a22fdf5c751eea4"

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
        url "https://github.com/greatliontech/semrel/releases/download/0.1.3/semrel_Linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "d697d188f946582f1c563a957251e0034b3363f2cc99a2c772a7211ab61e6700"

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
