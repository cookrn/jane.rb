require 'fileutils'

module Jane
  module Boot
    module Homedir
      DIRNAME = '.jane'.freeze
      HOME = ENV['HOME'].freeze
      HOMEDIR = File.expand_path(File.join(HOME, DIRNAME)).freeze

      def self.call(*)
        if(!Dir.exist?(HOMEDIR))
          FileUtils.mkdir_p(HOMEDIR)
        end
      end
    end
  end
end

Jane.add_boot_step(Jane::Boot::Homedir)
