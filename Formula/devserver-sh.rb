class DevserverSh < Formula
    require "language/node"
  
    desc "Package acting as bridge between Node projects and their package managers"
    homepage "https://github.com/digitalspacestdio/cli.devserver.sh"
    url "https://github.com/digitalspacestdio/cli.devserver.sh/releases/download/0.0.2/0.0.2.zip"
    sha256 "ff05fef766d466f34e1f8af59ded7ced8b7d26d48649d73aa1178f941291abbe"
    license "MIT"
  
    depends_on "node"
  
    def install
      system "npm", "install", *Language::Node.std_npm_install_args(libexec)
      bin.install_symlink Dir["#{libexec}/bin/*"]
    end
  end