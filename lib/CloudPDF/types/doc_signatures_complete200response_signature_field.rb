# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesComplete200ResponseSignatureField < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocSignaturesComplete200ResponseSignatureFieldObjectNumber }, key: "OBJECT_NUMBER"

      member -> { CloudPDF::Types::DocSignaturesComplete200ResponseSignatureFieldFqn }, key: "FQN"
    end
  end
end
