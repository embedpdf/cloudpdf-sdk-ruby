# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesListResponseSignaturesItem < Internal::Types::Model
      field :index, -> { Integer }, optional: false, nullable: false

      field :field, -> { CloudPDF::Types::FormFieldRef }, optional: false, nullable: false

      field :field_name, -> { String }, optional: false, nullable: false, api_name: "fieldName"

      field :widget, -> { CloudPDF::Types::FormWidget }, optional: false, nullable: true

      field :signed, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :kind, -> { CloudPDF::Types::DocSignaturesListResponseSignaturesItemKind }, optional: false, nullable: false

      field :filter, -> { String }, optional: false, nullable: true

      field :sub_filter, -> { String }, optional: false, nullable: true, api_name: "subFilter"

      field :byte_range, -> { Internal::Types::Array[Object] }, optional: false, nullable: true, api_name: "byteRange"

      field :contents_size_bytes, -> { Integer }, optional: false, nullable: false, api_name: "contentsSizeBytes"

      field :coverage, -> { CloudPDF::Types::DocSignaturesListResponseSignaturesItemCoverage }, optional: false, nullable: true

      field :revision_index, -> { Integer }, optional: false, nullable: true, api_name: "revisionIndex"

      field :signer, -> { CloudPDF::Types::DocSignaturesListResponseSignaturesItemSigner }, optional: false, nullable: false

      field :doc_mdp, -> { Integer }, optional: false, nullable: true, api_name: "docMdp"

      field :catalog_certification, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "catalogCertification"

      field :field_mdp, -> { CloudPDF::Types::FieldLockSpec }, optional: false, nullable: true, api_name: "fieldMdp"

      field :lock, -> { CloudPDF::Types::FieldLockSpec }, optional: false, nullable: true

      field :seed_value, -> { CloudPDF::Types::DocSignaturesListResponseSignaturesItemSeedValue }, optional: false, nullable: true, api_name: "seedValue"
    end
  end
end
