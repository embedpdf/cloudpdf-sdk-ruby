# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemPagesInsertBlankLayoutPagesItemBoxes < Internal::Types::Model
      field :media, -> { CloudPDF::Types::ChangeItemPagesInsertBlankLayoutPagesItemBoxesMedia }, optional: false, nullable: false

      field :crop, -> { CloudPDF::Types::ChangeItemPagesInsertBlankLayoutPagesItemBoxesCrop }, optional: false, nullable: false

      field :bleed, -> { CloudPDF::Types::ChangeItemPagesInsertBlankLayoutPagesItemBoxesBleed }, optional: false, nullable: false

      field :trim, -> { CloudPDF::Types::ChangeItemPagesInsertBlankLayoutPagesItemBoxesTrim }, optional: false, nullable: false

      field :art, -> { CloudPDF::Types::ChangeItemPagesInsertBlankLayoutPagesItemBoxesArt }, optional: false, nullable: false
    end
  end
end
