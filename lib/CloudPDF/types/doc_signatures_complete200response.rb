# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesComplete200Response < Internal::Types::Model
      field :status, -> { CloudPDF::Types::DocSignaturesComplete200ResponseStatus }, optional: false, nullable: false

      field :signature, -> { CloudPDF::Types::DocSignaturesComplete200ResponseSignature }, optional: false, nullable: false

      field :version, -> { CloudPDF::Types::DocSignaturesComplete200ResponseVersion }, optional: false, nullable: false

      field :previous, -> { CloudPDF::Types::DocSignaturesComplete200ResponsePrevious }, optional: false, nullable: false

      field :protection, -> { CloudPDF::Types::DocSignaturesComplete200ResponseProtection }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::DocSignaturesComplete200ResponseMeta }, optional: false, nullable: false
    end
  end
end
