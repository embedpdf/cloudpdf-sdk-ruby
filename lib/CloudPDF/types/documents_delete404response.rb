# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsDelete404Response < Internal::Types::Model
      field :error, -> { CloudPDF::Types::DocumentsDelete404ResponseError }, optional: false, nullable: false
    end
  end
end
