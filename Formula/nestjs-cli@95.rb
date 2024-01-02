class NestjsCliAT95 < Formula
    require "language/node"
    desc "Nestjs command line"
    homepage "https://docs.nestjs.com/cli/overview"
    url "https://registry.npmjs.org/@nestjs/cli/-/cli-9.5.0.tgz"
    sha256 "a08e947a0d4b15c247bd5c6534c0d486f35abe1e84efa4e110c59c5efc6bb7de"
    license "MIT"
    revision 1

    depends_on "node@18"

    def install
        system "npm", "install", *Language::Node.std_npm_install_args(libexec)
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end

    test do
        raise "Test not implemented."
    end
  end