# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsDelete403Response < Internal::Types::Model
      field :error, -> { CloudPDF::Types::DocumentsDelete403ResponseError }, optional: false, nullable: false
    end
  end
end
