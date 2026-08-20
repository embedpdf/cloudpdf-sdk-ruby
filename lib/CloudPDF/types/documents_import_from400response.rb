# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsImportFrom400Response < Internal::Types::Model
      field :error, -> { CloudPDF::Types::DocumentsImportFrom400ResponseError }, optional: false, nullable: false
    end
  end
end
