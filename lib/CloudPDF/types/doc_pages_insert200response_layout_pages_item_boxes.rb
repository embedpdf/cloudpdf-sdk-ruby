# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesInsert200ResponseLayoutPagesItemBoxes < Internal::Types::Model
      field :media, -> { CloudPDF::Types::DocPagesInsert200ResponseLayoutPagesItemBoxesMedia }, optional: false, nullable: false

      field :crop, -> { CloudPDF::Types::DocPagesInsert200ResponseLayoutPagesItemBoxesCrop }, optional: false, nullable: false

      field :bleed, -> { CloudPDF::Types::DocPagesInsert200ResponseLayoutPagesItemBoxesBleed }, optional: false, nullable: false

      field :trim, -> { CloudPDF::Types::DocPagesInsert200ResponseLayoutPagesItemBoxesTrim }, optional: false, nullable: false

      field :art, -> { CloudPDF::Types::DocPagesInsert200ResponseLayoutPagesItemBoxesArt }, optional: false, nullable: false
    end
  end
end
