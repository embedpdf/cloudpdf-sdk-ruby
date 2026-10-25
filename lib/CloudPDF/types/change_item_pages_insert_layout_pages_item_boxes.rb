# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemPagesInsertLayoutPagesItemBoxes < Internal::Types::Model
      field :media, -> { CloudPDF::Types::ChangeItemPagesInsertLayoutPagesItemBoxesMedia }, optional: false, nullable: false

      field :crop, -> { CloudPDF::Types::ChangeItemPagesInsertLayoutPagesItemBoxesCrop }, optional: false, nullable: false

      field :bleed, -> { CloudPDF::Types::ChangeItemPagesInsertLayoutPagesItemBoxesBleed }, optional: false, nullable: false

      field :trim, -> { CloudPDF::Types::ChangeItemPagesInsertLayoutPagesItemBoxesTrim }, optional: false, nullable: false

      field :art, -> { CloudPDF::Types::ChangeItemPagesInsertLayoutPagesItemBoxesArt }, optional: false, nullable: false
    end
  end
end
