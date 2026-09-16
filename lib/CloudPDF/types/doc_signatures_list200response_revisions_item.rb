# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesList200ResponseRevisionsItem < Internal::Types::Model
      field :index, -> { Integer }, optional: false, nullable: false

      field :end_, -> { Integer }, optional: false, nullable: false, api_name: "end"

      field :xref_offset, -> { Integer }, optional: false, nullable: false, api_name: "xrefOffset"

      field :signature_index, -> { Integer }, optional: false, nullable: true, api_name: "signatureIndex"
    end
  end
end
