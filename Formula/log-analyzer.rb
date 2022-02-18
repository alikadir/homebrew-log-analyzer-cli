# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
#                https://docs.brew.sh/Node-for-Formula-Authors

require "language/node"

class LogAnalyzer < Formula
   desc " ⏲ Log analyzer CLI for Heroku, AWS, etc."
   homepage "https://github.com/alikadir/log-analyzer-cli#readme"
   url "https://registry.npmjs.org/log-analyzer-cli/-/log-analyzer-cli-1.0.19.tgz"
   sha256 "12dbe15751c456f29758b2725ae317f5bdec965edd44121abac8094eab8bb23c"

   depends_on "node"
   def install
     system "npm", "install", *Language::Node.std_npm_install_args(libexec)
     bin.install_symlink Dir["#{libexec}/bin/*"]
   end
end
