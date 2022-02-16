# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
#                https://docs.brew.sh/Node-for-Formula-Authors

require "language/node"

class LogAnalyzer < Formula
   desc " ⏲ Log analyzer CLI for Heroku, AWS, etc."
   homepage "https://github.com/alikadir/log-analyzer-cli#readme"
   url "https://registry.npmjs.org/log-analyzer-cli/-/log-analyzer-cli-1.0.13.tgz"
   sha256 "93880e8db6dd200c5b6be07efd08581fc12781bf853ba27ab53eddbdb3de561c"

   depends_on "node"
   def install
     system "npm", "install", *Language::Node.std_npm_install_args(libexec)
     bin.install_symlink Dir["#{libexec}/bin/*"]
   end
end
