# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemPagesSetScale < Internal::Types::Model
      field :pages, -> { Internal::Types::Array[CloudPDF::Types::PageRef] }, optional: false, nullable: false

      field :measure, -> { CloudPDF::Types::ChangeItemPagesSetScaleMeasure }, optional: false, nullable: true

      field :page, -> { CloudPDF::Types::PageRef }, optional: false, nullable: false

      field :layout, -> { CloudPDF::Types::PageListSnapshot }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::MutationMeta }, optional: false, nullable: false
    end
  end
end
