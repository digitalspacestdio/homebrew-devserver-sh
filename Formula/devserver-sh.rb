class DevserverSh < Formula
    require "language/node"
  
    desc "Package acting as bridge between Node projects and their package managers"
    homepage "https://github.com/digitalspacestdio/cli.devserver.sh"
    url "https://github.com/digitalspacestdio/cli.devserver.sh/releases/download/0.0.3/0.0.3.zip"
    sha256 "d4394e66c42cda1d5fbe11fd92243816fbc5067ac601f67abe6b4a4de4bfeba9"
    license "MIT"
    revision 1
  
    depends_on "node@18"
    depends_on "nest"
  
    def install
      system "npm", "install", *Language::Node.std_npm_install_args(libexec)
      bin.install_symlink Dir["#{libexec}/bin/*"]
    end
  end