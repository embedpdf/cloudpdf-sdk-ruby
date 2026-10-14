# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesInsertBlank200ResponseLayoutPagesItemBoxes < Internal::Types::Model
      field :media, -> { CloudPDF::Types::DocPagesInsertBlank200ResponseLayoutPagesItemBoxesMedia }, optional: false, nullable: false

      field :crop, -> { CloudPDF::Types::DocPagesInsertBlank200ResponseLayoutPagesItemBoxesCrop }, optional: false, nullable: false

      field :bleed, -> { CloudPDF::Types::DocPagesInsertBlank200ResponseLayoutPagesItemBoxesBleed }, optional: false, nullable: false

      field :trim, -> { CloudPDF::Types::DocPagesInsertBlank200ResponseLayoutPagesItemBoxesTrim }, optional: false, nullable: false

      field :art, -> { CloudPDF::Types::DocPagesInsertBlank200ResponseLayoutPagesItemBoxesArt }, optional: false, nullable: false
    end
  end
end
