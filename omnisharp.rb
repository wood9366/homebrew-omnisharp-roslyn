class Omnisharp < Formula
  desc "Cross platform .NET development in the editor of your choice"
  homepage "http://www.omnisharp.net/"
  url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.37.6/omnisharp-osx.tar.gz"
  version "1.37.6"
  sha256 "e06d7a287a16d0c9290eb41085c7996e738c5cb0c2e59311c60c2455339295bc"
  conflicts_with "omnisharp-mono"

  depends_on "mono" => :recommended

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/omnisharp"
  end
end
