# frozen_string_literal: true

module CloudPDF
  module Types
    class DocHeadResponseEncryption < Internal::Types::Model
      field :state, -> { CloudPDF::Types::DocHeadResponseEncryptionState }, optional: false, nullable: false

      field :requires_password, -> { Internal::Types::Boolean }, optional: false, nullable: true, api_name: "requiresPassword"
    end
  end
end
