# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesAnalysis200ResponseCurrentFindingsItem < Internal::Types::Model
      field :rule, -> { String }, optional: false, nullable: false

      field :verdict, -> { CloudPDF::Types::DocSignaturesAnalysis200ResponseCurrentFindingsItemVerdict }, optional: false, nullable: false

      field :object_number, -> { Integer }, optional: false, nullable: false, api_name: "objectNumber"

      field :edge, -> { String }, optional: true, nullable: false

      field :detail, -> { String }, optional: true, nullable: false
    end
  end
end
