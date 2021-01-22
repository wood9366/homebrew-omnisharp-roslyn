class Omnisharp < Formula
  desc "Cross platform .NET development in the editor of your choice"
  homepage "http://www.omnisharp.net/"
  url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.37.6/omnisharp-mono.tar.gz"
  version "1.37.6"
  sha256 "a5e6c0536b35ae8fadabb02769528e203a138f1338759c02468d642680115be6"
  conflicts_with "omnisharp-mono"

  depends_on "mono" => :recommended

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/omnisharp"
  end
end
