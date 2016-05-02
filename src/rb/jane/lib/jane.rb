require 'set'

require 'jane/version'

module Jane
  class << self
    attr_accessor :boot_steps
  end

  def self.add_boot_step(callable = nil, &boot_step)
    @boot_steps ||= Set.new
    boot_steps.add(callable || boot_step)
  end

  def self.boot!
    if !boot_steps.nil? && !boot_steps.empty?
      boot_steps.each(&:call)
    end
  end
end

require 'jane/boot'
