# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesReorder200ResponseLayoutPagesItemBoxes < Internal::Types::Model
      field :media, -> { CloudPDF::Types::DocPagesReorder200ResponseLayoutPagesItemBoxesMedia }, optional: false, nullable: false

      field :crop, -> { CloudPDF::Types::DocPagesReorder200ResponseLayoutPagesItemBoxesCrop }, optional: false, nullable: false

      field :bleed, -> { CloudPDF::Types::DocPagesReorder200ResponseLayoutPagesItemBoxesBleed }, optional: false, nullable: false

      field :trim, -> { CloudPDF::Types::DocPagesReorder200ResponseLayoutPagesItemBoxesTrim }, optional: false, nullable: false

      field :art, -> { CloudPDF::Types::DocPagesReorder200ResponseLayoutPagesItemBoxesArt }, optional: false, nullable: false
    end
  end
end
