class GoogleMcp < Formula
  desc "Model Context Protocol servers for Google services (Gmail, Drive, Calendar)"
  homepage "https://github.com/greatliontech/google-mcp"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/greatliontech/google-mcp/releases/download/v#{version}/google-mcp_#{version}_darwin_arm64.tar.gz"
      sha256 "735696cf3c9f5f10b9af9ada0c52b24c656beefe6db2b260c424fd402841b2e5"
    else
      url "https://github.com/greatliontech/google-mcp/releases/download/v#{version}/google-mcp_#{version}_darwin_amd64.tar.gz"
      sha256 "490457d9b62e5a3e070543d67e0ec265b273a4900771a070b5bfafeeb42c1f8c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/greatliontech/google-mcp/releases/download/v#{version}/google-mcp_#{version}_linux_arm64.tar.gz"
      sha256 "3d14db64ed68bfc79cd7cc744b016e031e1d65027032999e43dd6f70c700f3ce"
    else
      url "https://github.com/greatliontech/google-mcp/releases/download/v#{version}/google-mcp_#{version}_linux_amd64.tar.gz"
      sha256 "173f8340b6b5fc453574ee525f6b24929cd2e67f01461d100b4433cc8a3b36e2"
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
