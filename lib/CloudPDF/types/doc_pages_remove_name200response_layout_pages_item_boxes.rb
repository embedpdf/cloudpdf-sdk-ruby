# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesRemoveName200ResponseLayoutPagesItemBoxes < Internal::Types::Model
      field :media, -> { CloudPDF::Types::DocPagesRemoveName200ResponseLayoutPagesItemBoxesMedia }, optional: false, nullable: false

      field :crop, -> { CloudPDF::Types::DocPagesRemoveName200ResponseLayoutPagesItemBoxesCrop }, optional: false, nullable: false

      field :bleed, -> { CloudPDF::Types::DocPagesRemoveName200ResponseLayoutPagesItemBoxesBleed }, optional: false, nullable: false

      field :trim, -> { CloudPDF::Types::DocPagesRemoveName200ResponseLayoutPagesItemBoxesTrim }, optional: false, nullable: false

      field :art, -> { CloudPDF::Types::DocPagesRemoveName200ResponseLayoutPagesItemBoxesArt }, optional: false, nullable: false
    end
  end
end
