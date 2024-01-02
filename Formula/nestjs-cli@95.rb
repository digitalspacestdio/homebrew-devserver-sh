class NestjsCliAt95 < Formula
    require "language/node"
    class BabelCli < Formula
    desc "Babel command line"
    homepage "https://babeljs.io/"
    url "https://registry.npmjs.org/@nestjs/cli/-/cli-9.5.0.tgz"
    sha256 "a08e947a0d4b15c247bd5c6534c0d486f35abe1e84efa4e110c59c5efc6bb7de"
    license "MIT"

    livecheck do
        url :stable
    end

    depends_on "node@18"

    def install
        system "npm", "install", *Language::Node.std_npm_install_args(libexec)
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end

    test do
        raise "Test not implemented."
    end
    end
  end