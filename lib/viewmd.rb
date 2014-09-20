require 'viewmd/version'
require 'github/markup'
require 'tempfile'

module Viewmd
  def view(name)
    Tempfile.create(['viewmd','.htm'],Dir.tmpdir,File::CREAT|File::TRUNC|File::RDWR, 0600) do |f|
      GitHub::Markup.render(f.path, File.read(name))
      Launchy.open(f.path)
    end
  end
end
