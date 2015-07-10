module ActiveRecord::Userstamp
  extend ActiveSupport::Autoload

  autoload :Configuration
  autoload :Stampable
  autoload :Stamper

  eager_autoload do
    autoload :ControllerAdditions
    autoload :MigrationAdditions
    autoload :ModelAdditions
  end

  eager_load!

  # Retrieves the configuration for the userstamp gem.
  #
  # @return [ActiveRecord::Userstamp::Configuration]
  def self.config
    Configuration
  end

  # Configures the gem.
  #
  # @yield [ActiveRecord::Userstamp::Configuration] The configuration for the gem.
  def self.configure
    yield config
  end
end
