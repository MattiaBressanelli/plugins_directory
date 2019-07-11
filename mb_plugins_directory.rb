require 'sketchup.rb'
require 'extensions.rb'

module MattiaBressanelli
  module PluginsDirectory

    unless file_loaded?(__FILE__)
    
      ex = SketchupExtension.new('Plugins Directory', 'mb_plugins_directory/main')

      ex.description = 'Simple extension to open the SkeychUp plugins directory.'
      ex.version     = '1.0.0'
      ex.copyright   = 'Mattia Bressanelli © 2019'
      ex.creator     = 'Mattia Bressanelli'

      Sketchup.register_extension(ex, true)

      file_loaded(__FILE__)
    end

  end # module PluginsDirectory
end # module MattiaBressanelli