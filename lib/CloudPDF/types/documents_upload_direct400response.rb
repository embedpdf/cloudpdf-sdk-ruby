# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsUploadDirect400Response < Internal::Types::Model
      field :error, -> { CloudPDF::Types::DocumentsUploadDirect400ResponseError }, optional: false, nullable: false
    end
  end
end
