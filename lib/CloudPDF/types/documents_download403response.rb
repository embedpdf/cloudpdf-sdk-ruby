# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsDownload403Response < Internal::Types::Model
      field :error, -> { CloudPDF::Types::DocumentsDownload403ResponseError }, optional: false, nullable: false
    end
  end
end
