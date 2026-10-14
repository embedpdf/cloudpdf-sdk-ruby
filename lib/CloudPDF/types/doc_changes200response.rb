# frozen_string_literal: true

module CloudPDF
  module Types
    class DocChanges200Response < Internal::Types::Model
      field :changes, -> { Internal::Types::Array[CloudPDF::Types::DocChanges200ResponseChangesItem] }, optional: false, nullable: false
    end
  end
end
