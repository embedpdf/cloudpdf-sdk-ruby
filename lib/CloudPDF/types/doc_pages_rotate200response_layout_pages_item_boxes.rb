# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesRotate200ResponseLayoutPagesItemBoxes < Internal::Types::Model
      field :media, -> { CloudPDF::Types::DocPagesRotate200ResponseLayoutPagesItemBoxesMedia }, optional: false, nullable: false

      field :crop, -> { CloudPDF::Types::DocPagesRotate200ResponseLayoutPagesItemBoxesCrop }, optional: false, nullable: false

      field :bleed, -> { CloudPDF::Types::DocPagesRotate200ResponseLayoutPagesItemBoxesBleed }, optional: false, nullable: false

      field :trim, -> { CloudPDF::Types::DocPagesRotate200ResponseLayoutPagesItemBoxesTrim }, optional: false, nullable: false

      field :art, -> { CloudPDF::Types::DocPagesRotate200ResponseLayoutPagesItemBoxesArt }, optional: false, nullable: false
    end
  end
end
