class DevserverSh < Formula
    require "language/node"
  
    desc "Package acting as bridge between Node projects and their package managers"
    homepage "https://github.com/digitalspacestdio/cli.devserver.sh"
    url "https://github.com/digitalspacestdio/cli.devserver.sh/releases/download/0.0.4/0.0.4.zip"
    sha256 "6042931edf1f36134ecdca5542fe5a68c815e7b96532f3bd57d513d17f244065"
    license "MIT"
    revision 1
  
    depends_on "node@18"
    depends_on "nestjs-cli@95" => :build
  
    def install
        ENV["PATH"] = "#{buildpath}/node_modules/.bin:" + ENV["PATH"]
        system "npm", "install", *Language::Node.std_npm_install_args(libexec)
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end
  end
