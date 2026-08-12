# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsUploadProxy400Response < Internal::Types::Model
      field :error, -> { CloudPDF::Types::DocumentsUploadProxy400ResponseError }, optional: false, nullable: false
    end
  end
end
