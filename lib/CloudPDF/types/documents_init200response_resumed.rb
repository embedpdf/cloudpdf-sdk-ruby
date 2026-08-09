# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsInit200ResponseResumed < Internal::Types::Model
      field :document, -> { CloudPDF::Types::DocumentsInit200ResponseResumedDocument }, optional: false, nullable: false

      field :upload, -> { CloudPDF::Types::DocumentsInit200ResponseResumedUpload }, optional: false, nullable: false
    end
  end
end
