# frozen_string_literal: true

module CloudPDF
  module Types
    class GrantsCreate200Response < Internal::Types::Model
      field :grant, -> { CloudPDF::Types::GrantsCreate200ResponseGrant }, optional: false, nullable: false
    end
  end
end
