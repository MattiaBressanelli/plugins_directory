# This extension locates the SketchUp plugins folder and opens it.

require 'sketchup.rb'

module MattiaBressanelli
  module PluginsDirectory

    def self.open_plugins_directory
      UI.openURL("file:///#{Sketchup.find_support_file('Plugins')}")
    end

    unless file_loaded?(__FILE__)

      menu = UI.menu('Help')
      menu.add_item('Open Plugins Directory') {
        self.open_plugins_directory
      }

      file_loaded(__FILE__)
    end

  end # module PluginsDirectory
end # module MattiaBressanelli