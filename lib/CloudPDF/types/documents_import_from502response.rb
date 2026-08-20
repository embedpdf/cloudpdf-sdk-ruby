# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsImportFrom502Response < Internal::Types::Model
      field :error, -> { CloudPDF::Types::DocumentsImportFrom502ResponseError }, optional: false, nullable: false
    end
  end
end
