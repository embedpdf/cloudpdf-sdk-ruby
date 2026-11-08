# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesSetScaleResponse < Internal::Types::Model
      field :page, -> { CloudPDF::Types::PageRef }, optional: false, nullable: false

      field :layout, -> { CloudPDF::Types::PageListSnapshot }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::MutationMeta }, optional: false, nullable: false
    end
  end
end
