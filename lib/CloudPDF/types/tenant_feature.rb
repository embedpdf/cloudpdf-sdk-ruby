# frozen_string_literal: true

module CloudPDF
  module Types
    class TenantFeature < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :stopped, -> { CloudPDF::Types::TenantFeatureStopped }, optional: true, nullable: false
    end
  end
end
