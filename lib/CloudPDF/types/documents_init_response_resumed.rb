# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsInitResponseResumed < Internal::Types::Model
      field :document, -> { CloudPDF::Types::DocumentsInitResponseResumedDocument }, optional: false, nullable: false

      field :upload, -> { CloudPDF::Types::DocumentsInitResponseResumedUpload }, optional: false, nullable: false
    end
  end
end
