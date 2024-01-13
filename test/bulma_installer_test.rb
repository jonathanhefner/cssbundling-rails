require "test_helper"
require_relative "shared_installer_tests"

class BulmaInstallerTest < ActiveSupport::TestCase
  include RailsAppHelpers
  include SharedInstallerTests

  private
    def run_installer
      stub_bins("gem", "yarn", "npm")
      run_command("bin/rails", "css:install:bulma")
    end
end