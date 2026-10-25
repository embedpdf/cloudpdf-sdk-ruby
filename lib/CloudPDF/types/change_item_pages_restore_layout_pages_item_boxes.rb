# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemPagesRestoreLayoutPagesItemBoxes < Internal::Types::Model
      field :media, -> { CloudPDF::Types::ChangeItemPagesRestoreLayoutPagesItemBoxesMedia }, optional: false, nullable: false

      field :crop, -> { CloudPDF::Types::ChangeItemPagesRestoreLayoutPagesItemBoxesCrop }, optional: false, nullable: false

      field :bleed, -> { CloudPDF::Types::ChangeItemPagesRestoreLayoutPagesItemBoxesBleed }, optional: false, nullable: false

      field :trim, -> { CloudPDF::Types::ChangeItemPagesRestoreLayoutPagesItemBoxesTrim }, optional: false, nullable: false

      field :art, -> { CloudPDF::Types::ChangeItemPagesRestoreLayoutPagesItemBoxesArt }, optional: false, nullable: false
    end
  end
end
