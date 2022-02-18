# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
#                https://docs.brew.sh/Node-for-Formula-Authors

require "language/node"

class LogAnalyzer < Formula
   desc " ⏲ Log analyzer CLI for Heroku, AWS, etc."
   homepage "https://github.com/alikadir/log-analyzer-cli#readme"
   url "https://registry.npmjs.org/log-analyzer-cli/-/log-analyzer-cli-1.0.25.tgz"
   sha256 "0b8d606a73e924c56a787e5786fc19263a47f417cb7291b35923deb60737594a"

   depends_on "node"
   def install
     system "npm", "install", *Language::Node.std_npm_install_args(libexec)
     bin.install_symlink Dir["#{libexec}/bin/*"]
   end
end
