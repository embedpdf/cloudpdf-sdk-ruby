# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemPagesRotateLayoutPagesItemBoxes < Internal::Types::Model
      field :media, -> { CloudPDF::Types::ChangeItemPagesRotateLayoutPagesItemBoxesMedia }, optional: false, nullable: false

      field :crop, -> { CloudPDF::Types::ChangeItemPagesRotateLayoutPagesItemBoxesCrop }, optional: false, nullable: false

      field :bleed, -> { CloudPDF::Types::ChangeItemPagesRotateLayoutPagesItemBoxesBleed }, optional: false, nullable: false

      field :trim, -> { CloudPDF::Types::ChangeItemPagesRotateLayoutPagesItemBoxesTrim }, optional: false, nullable: false

      field :art, -> { CloudPDF::Types::ChangeItemPagesRotateLayoutPagesItemBoxesArt }, optional: false, nullable: false
    end
  end
end
