# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesCompleteResponse < Internal::Types::Model
      field :status, -> { CloudPDF::Types::DocSignaturesCompleteResponseStatus }, optional: false, nullable: false

      field :signature, -> { CloudPDF::Types::DocSignaturesCompleteResponseSignature }, optional: false, nullable: false

      field :version, -> { CloudPDF::Types::DocSignaturesCompleteResponseVersion }, optional: false, nullable: false

      field :previous, -> { CloudPDF::Types::DocSignaturesCompleteResponsePrevious }, optional: false, nullable: false

      field :protection, -> { CloudPDF::Types::DocSignaturesCompleteResponseProtection }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::MutationMeta }, optional: false, nullable: false
    end
  end
end
