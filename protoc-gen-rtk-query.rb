# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ProtocGenRtkQuery < Formula
  desc "Generate rtk query endpoints from grpc service definitions"
  homepage "https://github.com/greatliontech/protoc-gen-rtk-query"
  version "0.0.4-1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/greatliontech/protoc-gen-rtk-query/releases/download/0.0.4-1/protoc-gen-rtk-query_0.0.4-1_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "78436bd7b509650efbb2e048063434a93c5ffe4b06bbec45d8e110427edd18ba"

      def install
        bin.install "protoc-gen-rtk-query"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/greatliontech/protoc-gen-rtk-query/releases/download/0.0.4-1/protoc-gen-rtk-query_0.0.4-1_Darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "dedca9f1a12a3ee3aeaf053728626f83c319fbc75c0e84fc1879d0d8162670b9"

      def install
        bin.install "protoc-gen-rtk-query"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/greatliontech/protoc-gen-rtk-query/releases/download/0.0.4-1/protoc-gen-rtk-query_0.0.4-1_Linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "52def9127c3cfca8cc193dee6dce6a48d815bd08a82615c8d52669c21498b1c2"

      def install
        bin.install "protoc-gen-rtk-query"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/greatliontech/protoc-gen-rtk-query/releases/download/0.0.4-1/protoc-gen-rtk-query_0.0.4-1_Linux_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "19b1a5cf0db6d2bdd0d7a2593cac645305aa0c7c151398c66debbb97a041ebaa"

      def install
        bin.install "protoc-gen-rtk-query"
      end
    end
  end
end
