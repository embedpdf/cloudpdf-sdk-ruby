# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesAnalysis200ResponseRestrictionsItem < Internal::Types::Model
      field :signature_index, -> { Integer }, optional: false, nullable: false, api_name: "signatureIndex"

      field :revision_index, -> { Integer }, optional: false, nullable: false, api_name: "revisionIndex"

      field :source, -> { CloudPDF::Types::DocSignaturesAnalysis200ResponseRestrictionsItemSource }, optional: false, nullable: false

      field :own, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :permission, -> { Integer }, optional: true, nullable: false

      field :fields, -> { Object }, optional: true, nullable: false
    end
  end
end
