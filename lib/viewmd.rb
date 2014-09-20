require 'viewmd/version'
require 'html/pipeline'

require 'pygments.rb'

require 'launchy'
require 'tempfile'
require 'open-uri'

module Viewmd
  def self.view(name)
    Tempfile.create(["viewmd-#{name}-",'.htm'],Dir.tmpdir,File::CREAT|File::TRUNC|File::RDWR, 0600) do |f|
      pipeline = HTML::Pipeline.new [
        HTML::Pipeline::MarkdownFilter,
        HTML::Pipeline::SanitizationFilter,
        HTML::Pipeline::AutolinkFilter,
        HTML::Pipeline::SyntaxHighlightFilter
      ], gfm: true
      result = pipeline.call File.read(name)
      f << "<!DOCTYPE html><html><head><style>"
      f << "pre { background-color: #f7f7f7; padding: 16px; font-size: 85%; margin-bottom: 16px; line-height: 1.45; }"
      f << open('https://raw.githubusercontent.com/aahan/pygments-github-style/master/github.css').read
      f << "</style></head><body>"
      f << result[:output].to_s
      f << "</body></html>"
      f.flush
      Launchy.open(f.path) 
      # joining the launchy thread doesn't help to wait for browser to close before deleting the file
      # so, let's just wait a little
      sleep 2
    end
  end
end
