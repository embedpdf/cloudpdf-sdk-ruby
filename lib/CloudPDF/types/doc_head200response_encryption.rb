# frozen_string_literal: true

module CloudPDF
  module Types
    class DocHead200ResponseEncryption < Internal::Types::Model
      field :state, -> { CloudPDF::Types::DocHead200ResponseEncryptionState }, optional: false, nullable: false

      field :requires_password, -> { Internal::Types::Boolean }, optional: false, nullable: true, api_name: "requiresPassword"
    end
  end
end
