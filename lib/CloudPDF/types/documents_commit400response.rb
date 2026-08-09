# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsCommit400Response < Internal::Types::Model
      field :error, -> { CloudPDF::Types::DocumentsCommit400ResponseError }, optional: false, nullable: false
    end
  end
end
