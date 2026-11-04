# frozen_string_literal: true

module CloudPDF
  module Types
    class DeploymentModulesResponse < Internal::Types::Model
      field :modules, -> { Internal::Types::Array[CloudPDF::Types::ModuleManifest] }, optional: false, nullable: false
    end
  end
end
