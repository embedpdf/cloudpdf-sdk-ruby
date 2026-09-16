# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesList200ResponseSignaturesItemField < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocSignaturesList200ResponseSignaturesItemFieldObjectNumber }, key: "OBJECT_NUMBER"

      member -> { CloudPDF::Types::DocSignaturesList200ResponseSignaturesItemFieldFqn }, key: "FQN"
    end
  end
end
