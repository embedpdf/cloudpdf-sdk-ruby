# frozen_string_literal: true

module CloudPDF
  module Types
    class DocChangesResponse < Internal::Types::Model
      field :changes, -> { Internal::Types::Array[CloudPDF::Types::DocChangesResponseChangesItem] }, optional: false, nullable: false
    end
  end
end
