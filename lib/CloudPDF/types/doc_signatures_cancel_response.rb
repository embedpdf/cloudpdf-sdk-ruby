# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesCancelResponse < Internal::Types::Model
      field :status, -> { CloudPDF::Types::DocSignaturesCancelResponseStatus }, optional: false, nullable: false
    end
  end
end
