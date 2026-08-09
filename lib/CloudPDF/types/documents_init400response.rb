# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsInit400Response < Internal::Types::Model
      field :error, -> { CloudPDF::Types::DocumentsInit400ResponseError }, optional: false, nullable: false
    end
  end
end
