# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsUpdateResponse < Internal::Types::Model
      field :document, -> { CloudPDF::Types::DocumentsUpdateResponseDocument }, optional: false, nullable: false
    end
  end
end
