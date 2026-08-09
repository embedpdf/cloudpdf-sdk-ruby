# frozen_string_literal: true

module CloudPDF
  module Types
    class DeploymentLicenseStatusResponse < Internal::Types::Model
      field :license, -> { Object }, optional: true, nullable: false

      field :reporting, -> { Object }, optional: true, nullable: false

      field :usage, -> { Object }, optional: true, nullable: false
    end
  end
end
