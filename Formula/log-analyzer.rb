# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
#                https://docs.brew.sh/Node-for-Formula-Authors

require "language/node"

class LogAnalyzer < Formula
   desc " ⏲ Log analyzer CLI for Heroku, AWS, etc."
   homepage "https://github.com/alikadir/log-analyzer-cli#readme"
   url "https://registry.npmjs.org/log-analyzer-cli/-/log-analyzer-cli-1.0.21.tgz"
   sha256 "ddd790f753fc6b7024857715b40f14dc02d36f350e49787de5c3376a90732bd2"

   depends_on "node"
   def install
     system "npm", "install", *Language::Node.std_npm_install_args(libexec)
     bin.install_symlink Dir["#{libexec}/bin/*"]
   end
end
