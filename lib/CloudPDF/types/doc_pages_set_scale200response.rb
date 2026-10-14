# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesSetScale200Response < Internal::Types::Model
      field :page, -> { CloudPDF::Types::PageRef }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::MutationMeta }, optional: false, nullable: false
    end
  end
end
