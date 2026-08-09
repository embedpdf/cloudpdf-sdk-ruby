# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsGet403Response < Internal::Types::Model
      field :error, -> { CloudPDF::Types::DocumentsGet403ResponseError }, optional: false, nullable: false
    end
  end
end
