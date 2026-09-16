# frozen_string_literal: true

module CloudPDF
  module Types
    class DocVersionsList200Response < Internal::Types::Model
      field :head, -> { String }, optional: false, nullable: false

      field :versions, -> { Internal::Types::Array[CloudPDF::Types::DocVersionsList200ResponseVersionsItem] }, optional: false, nullable: false
    end
  end
end
