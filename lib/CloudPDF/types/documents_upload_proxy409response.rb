# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsUploadProxy409Response < Internal::Types::Model
      field :error, -> { CloudPDF::Types::DocumentsUploadProxy409ResponseError }, optional: false, nullable: false
    end
  end
end
