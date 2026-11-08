# frozen_string_literal: true

module CloudPDF
  module Types
    class PageListSnapshotPagesItemBoxes < Internal::Types::Model
      field :media, -> { CloudPDF::Types::PageListSnapshotPagesItemBoxesMedia }, optional: false, nullable: false

      field :crop, -> { CloudPDF::Types::PageListSnapshotPagesItemBoxesCrop }, optional: false, nullable: false

      field :bleed, -> { CloudPDF::Types::PageListSnapshotPagesItemBoxesBleed }, optional: false, nullable: false

      field :trim, -> { CloudPDF::Types::PageListSnapshotPagesItemBoxesTrim }, optional: false, nullable: false

      field :art, -> { CloudPDF::Types::PageListSnapshotPagesItemBoxesArt }, optional: false, nullable: false
    end
  end
end
