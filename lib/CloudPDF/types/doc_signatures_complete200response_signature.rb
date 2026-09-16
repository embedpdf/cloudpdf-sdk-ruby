# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesComplete200ResponseSignature < Internal::Types::Model
      field :index, -> { Integer }, optional: false, nullable: false

      field :field, -> { CloudPDF::Types::DocSignaturesComplete200ResponseSignatureField }, optional: false, nullable: false

      field :field_name, -> { String }, optional: false, nullable: false, api_name: "fieldName"

      field :widget, -> { CloudPDF::Types::DocSignaturesComplete200ResponseSignatureWidget }, optional: false, nullable: true

      field :signed, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :kind, -> { CloudPDF::Types::DocSignaturesComplete200ResponseSignatureKind }, optional: false, nullable: false

      field :filter, -> { String }, optional: false, nullable: true

      field :sub_filter, -> { String }, optional: false, nullable: true, api_name: "subFilter"

      field :byte_range, -> { Internal::Types::Array[Object] }, optional: false, nullable: true, api_name: "byteRange"

      field :contents_size, -> { Integer }, optional: false, nullable: false, api_name: "contentsSize"

      field :coverage, -> { CloudPDF::Types::DocSignaturesComplete200ResponseSignatureCoverage }, optional: false, nullable: true

      field :revision_index, -> { Integer }, optional: false, nullable: true, api_name: "revisionIndex"

      field :signer, -> { CloudPDF::Types::DocSignaturesComplete200ResponseSignatureSigner }, optional: false, nullable: false

      field :doc_mdp, -> { Integer }, optional: false, nullable: true, api_name: "docMdp"

      field :catalog_certification, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "catalogCertification"

      field :field_mdp, -> { CloudPDF::Types::DocSignaturesComplete200ResponseSignatureFieldMdp }, optional: false, nullable: true, api_name: "fieldMdp"

      field :lock, -> { CloudPDF::Types::DocSignaturesComplete200ResponseSignatureLock }, optional: false, nullable: true

      field :seed_value, -> { CloudPDF::Types::DocSignaturesComplete200ResponseSignatureSeedValue }, optional: false, nullable: true, api_name: "seedValue"
    end
  end
end
