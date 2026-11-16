# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesAddValidationInfoResponse < Internal::Types::Model
      field :added, -> { CloudPDF::Types::DocSignaturesAddValidationInfoResponseAdded }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::MutationMeta }, optional: false, nullable: false
    end
  end
end
