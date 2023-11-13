# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ProtocGenRtkQuery < Formula
  desc "Generate rtk query endpoints from grpc service definitions"
  homepage "https://github.com/greatliontech/protoc-gen-rtk-query"
  version "0.4.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/greatliontech/protoc-gen-rtk-query/releases/download/v0.4.6/protoc-gen-rtk-query_0.4.6_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "43e48aff49828a92e41d9e1b3414efba8fe046abae4755baed38f4da67f08788"

      def install
        bin.install "protoc-gen-rtk-query"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/greatliontech/protoc-gen-rtk-query/releases/download/v0.4.6/protoc-gen-rtk-query_0.4.6_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "1abfefaaded0706da250c6d2fdbf92c36d0a5c297c790c3365662bdfb201dc18"

      def install
        bin.install "protoc-gen-rtk-query"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/greatliontech/protoc-gen-rtk-query/releases/download/v0.4.6/protoc-gen-rtk-query_0.4.6_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b9af4021c0296a0eb646414856a40670e90307c4fc4232984680b0420407d746"

      def install
        bin.install "protoc-gen-rtk-query"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/greatliontech/protoc-gen-rtk-query/releases/download/v0.4.6/protoc-gen-rtk-query_0.4.6_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "31713111a3d51822cfb6abf0c51b4b99b97cff9c4780e0685fc3da3d5e3e4701"

      def install
        bin.install "protoc-gen-rtk-query"
      end
    end
  end
end
