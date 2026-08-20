# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsImportFrom403Response < Internal::Types::Model
      field :error, -> { CloudPDF::Types::DocumentsImportFrom403ResponseError }, optional: false, nullable: false
    end
  end
end
