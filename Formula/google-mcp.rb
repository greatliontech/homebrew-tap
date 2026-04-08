class GoogleMcp < Formula
  desc "Model Context Protocol servers for Google services (Gmail, Drive, Calendar)"
  homepage "https://github.com/greatliontech/google-mcp"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/greatliontech/google-mcp/releases/download/v#{version}/google-mcp_#{version}_darwin_arm64.tar.gz"
      sha256 "303aef2770817ab5c6654e6b2a4a8661b7cc98b39a8bd410100da7a76524ff3c"
    else
      url "https://github.com/greatliontech/google-mcp/releases/download/v#{version}/google-mcp_#{version}_darwin_amd64.tar.gz"
      sha256 "b599a3e3a95c23aa9a561e907d60beb14f844ee7b59ca770a3ff1df41fd5a27d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/greatliontech/google-mcp/releases/download/v#{version}/google-mcp_#{version}_linux_arm64.tar.gz"
      sha256 "e1754650646fe121bfdfed531afe64c37edc6f89da7a38b6805c909efdcfc652"
    else
      url "https://github.com/greatliontech/google-mcp/releases/download/v#{version}/google-mcp_#{version}_linux_amd64.tar.gz"
      sha256 "7e1edb8f2ae8a830222c6d966f32b83107c7d00c88226704f7d2e7bf97e3114b"
    end
  end

  def install
    bin.install "google-mcp"

    generate_completions_from_executable(bin/"google-mcp", "completion")
  end

  test do
    system "#{bin}/google-mcp", "version"
  end
end
