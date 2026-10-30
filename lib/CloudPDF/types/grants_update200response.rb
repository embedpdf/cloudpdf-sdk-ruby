# frozen_string_literal: true

module CloudPDF
  module Types
    class GrantsUpdate200Response < Internal::Types::Model
      field :grant, -> { CloudPDF::Types::GrantsUpdate200ResponseGrant }, optional: false, nullable: false
    end
  end
end
