class KakaoMax < Formula
  desc "Unofficial headless KakaoTalk account daemon and MCP server for AI agents"
  homepage "https://github.com/ziesski/kakao-max"
  url "https://registry.npmjs.org/kakao-max/-/kakao-max-0.1.0.tgz"
  sha256 "0bee0dc20c67d0f8e7ab4a0a48483a70de38c0c96735d970bb7399f291759e32"
  license "MIT"

  livecheck do
    url :stable
  end

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  def caveats
    <<~EOS
      kakao-max is unofficial and not affiliated with Kakao. It signs in to your own account,
      and any account restriction that follows is your responsibility. Try a separate account first.

      To connect to a kakao-max daemon on your Linux server:
        kakao-max setup
    EOS
  end

  test do
    assert_match "kakao-max", shell_output("#{bin}/kakao-max help")
    assert_path_exists bin/"kakao-max-mcp"
    assert_path_exists bin/"kakao-max-web"
  end
end
