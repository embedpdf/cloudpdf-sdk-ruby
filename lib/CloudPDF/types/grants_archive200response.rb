# frozen_string_literal: true

module CloudPDF
  module Types
    class GrantsArchive200Response < Internal::Types::Model
      field :grant, -> { CloudPDF::Types::GrantsArchive200ResponseGrant }, optional: false, nullable: false
    end
  end
end
