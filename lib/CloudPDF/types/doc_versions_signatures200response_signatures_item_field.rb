# frozen_string_literal: true

module CloudPDF
  module Types
    class DocVersionsSignatures200ResponseSignaturesItemField < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocVersionsSignatures200ResponseSignaturesItemFieldObjectNumber }, key: "OBJECT_NUMBER"

      member -> { CloudPDF::Types::DocVersionsSignatures200ResponseSignaturesItemFieldFqn }, key: "FQN"
    end
  end
end
