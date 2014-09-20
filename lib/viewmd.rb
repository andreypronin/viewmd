require 'viewmd/version'
require 'github/markup'
require 'launchy'
require 'tempfile'

module Viewmd
  def self.view(name)
    Tempfile.create(['viewmd','.htm'],Dir.tmpdir,File::CREAT|File::TRUNC|File::RDWR, 0600) do |f|
      f << GitHub::Markup.render(name, File.read(name))
      f.flush
      Launchy.open(f.path) 
      # joining the launchy thread doesn't help to wait for browser to close before deleting the file
      # so, let's just wait a little
      sleep 2
    end
  end
end
