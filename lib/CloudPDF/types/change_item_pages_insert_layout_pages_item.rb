# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemPagesInsertLayoutPagesItem < Internal::Types::Model
      field :index, -> { Integer }, optional: false, nullable: false

      field :ref, -> { CloudPDF::Types::PageRef }, optional: false, nullable: false

      field :label, -> { String }, optional: false, nullable: true

      field :size, -> { CloudPDF::Types::ChangeItemPagesInsertLayoutPagesItemSize }, optional: false, nullable: false

      field :rotation, -> { Integer }, optional: false, nullable: false

      field :user_unit, -> { Integer }, optional: false, nullable: false, api_name: "userUnit"

      field :tab_order, -> { CloudPDF::Types::ChangeItemPagesInsertLayoutPagesItemTabOrder }, optional: false, nullable: true, api_name: "tabOrder"

      field :boxes, -> { CloudPDF::Types::ChangeItemPagesInsertLayoutPagesItemBoxes }, optional: false, nullable: false

      field :pdf_crop_box, -> { CloudPDF::Types::ChangeItemPagesInsertLayoutPagesItemPdfCropBox }, optional: false, nullable: false, api_name: "pdfCropBox"

      field :actions, -> { CloudPDF::Types::PdfPageActions }, optional: true, nullable: false
    end
  end
end
