# frozen_string_literal: true

module CloudPDF
  module Types
    class DeploymentLicenseStatusResponse < Internal::Types::Model
      field :license, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

      field :reporting, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :usage, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true
    end
  end
end
