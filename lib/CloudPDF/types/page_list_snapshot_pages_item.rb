# frozen_string_literal: true

module CloudPDF
  module Types
    class PageListSnapshotPagesItem < Internal::Types::Model
      field :index, -> { Integer }, optional: false, nullable: false

      field :ref, -> { CloudPDF::Types::PageRef }, optional: false, nullable: false

      field :label, -> { String }, optional: false, nullable: true

      field :size, -> { CloudPDF::Types::PageListSnapshotPagesItemSize }, optional: false, nullable: false

      field :rotation, -> { Integer }, optional: false, nullable: false

      field :user_unit, -> { Integer }, optional: false, nullable: false, api_name: "userUnit"

      field :tab_order, -> { CloudPDF::Types::PageListSnapshotPagesItemTabOrder }, optional: false, nullable: true, api_name: "tabOrder"

      field :boxes, -> { CloudPDF::Types::PageListSnapshotPagesItemBoxes }, optional: false, nullable: false

      field :pdf_crop_box, -> { CloudPDF::Types::PageListSnapshotPagesItemPdfCropBox }, optional: false, nullable: false, api_name: "pdfCropBox"

      field :actions, -> { CloudPDF::Types::PdfPageActions }, optional: true, nullable: false

      field :viewports, -> { Internal::Types::Array[CloudPDF::Types::PageMeasurementViewport] }, optional: true, nullable: false
    end
  end
end
