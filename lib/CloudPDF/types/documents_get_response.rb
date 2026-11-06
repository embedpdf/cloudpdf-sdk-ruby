# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsGetResponse < Internal::Types::Model
      field :document, -> { CloudPDF::Types::DocumentsGetResponseDocument }, optional: false, nullable: false
    end
  end
end
