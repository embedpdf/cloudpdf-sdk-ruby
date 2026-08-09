# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsGet404Response < Internal::Types::Model
      field :error, -> { CloudPDF::Types::DocumentsGet404ResponseError }, optional: false, nullable: false
    end
  end
end
