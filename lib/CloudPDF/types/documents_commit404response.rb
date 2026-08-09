# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsCommit404Response < Internal::Types::Model
      field :error, -> { CloudPDF::Types::DocumentsCommit404ResponseError }, optional: false, nullable: false
    end
  end
end
