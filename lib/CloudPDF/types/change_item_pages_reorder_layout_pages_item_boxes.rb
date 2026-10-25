# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemPagesReorderLayoutPagesItemBoxes < Internal::Types::Model
      field :media, -> { CloudPDF::Types::ChangeItemPagesReorderLayoutPagesItemBoxesMedia }, optional: false, nullable: false

      field :crop, -> { CloudPDF::Types::ChangeItemPagesReorderLayoutPagesItemBoxesCrop }, optional: false, nullable: false

      field :bleed, -> { CloudPDF::Types::ChangeItemPagesReorderLayoutPagesItemBoxesBleed }, optional: false, nullable: false

      field :trim, -> { CloudPDF::Types::ChangeItemPagesReorderLayoutPagesItemBoxesTrim }, optional: false, nullable: false

      field :art, -> { CloudPDF::Types::ChangeItemPagesReorderLayoutPagesItemBoxesArt }, optional: false, nullable: false
    end
  end
end
