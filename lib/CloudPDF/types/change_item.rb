# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItem < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :type

      member -> { CloudPDF::Types::ChangeItemSkipped }, key: "SKIPPED"

      member -> { CloudPDF::Types::ChangeItemAnnotationsCreate }, key: "ANNOTATIONS_CREATE"

      member -> { CloudPDF::Types::ChangeItemAnnotationsUpdate }, key: "ANNOTATIONS_UPDATE"

      member -> { CloudPDF::Types::ChangeItemAnnotationsDelete }, key: "ANNOTATIONS_DELETE"

      member -> { CloudPDF::Types::ChangeItemAnnotationsReorder }, key: "ANNOTATIONS_REORDER"

      member -> { CloudPDF::Types::ChangeItemAnnotationsRestore }, key: "ANNOTATIONS_RESTORE"

      member -> { CloudPDF::Types::ChangeItemFormsSetValue }, key: "FORMS_SET_VALUE"

      member -> { CloudPDF::Types::ChangeItemFormsSetDisplay }, key: "FORMS_SET_DISPLAY"

      member -> { CloudPDF::Types::ChangeItemFormsSetAppearanceText }, key: "FORMS_SET_APPEARANCE_TEXT"

      member -> { CloudPDF::Types::ChangeItemFormsReset }, key: "FORMS_RESET"

      member -> { CloudPDF::Types::ChangeItemFormsCreate }, key: "FORMS_CREATE"

      member -> { CloudPDF::Types::ChangeItemFormsUpdate }, key: "FORMS_UPDATE"

      member -> { CloudPDF::Types::ChangeItemFormsDelete }, key: "FORMS_DELETE"

      member -> { CloudPDF::Types::ChangeItemFormsRestore }, key: "FORMS_RESTORE"

      member -> { CloudPDF::Types::ChangeItemFormsSetSignatureAppearance }, key: "FORMS_SET_SIGNATURE_APPEARANCE"

      member -> { CloudPDF::Types::ChangeItemFormsAddWidget }, key: "FORMS_ADD_WIDGET"

      member -> { CloudPDF::Types::ChangeItemFormsRemoveWidget }, key: "FORMS_REMOVE_WIDGET"

      member -> { CloudPDF::Types::ChangeItemFormsDeleteWidget }, key: "FORMS_DELETE_WIDGET"

      member -> { CloudPDF::Types::ChangeItemFormsRestoreWidget }, key: "FORMS_RESTORE_WIDGET"

      member -> { CloudPDF::Types::ChangeItemFormsReorderWidgets }, key: "FORMS_REORDER_WIDGETS"

      member -> { CloudPDF::Types::ChangeItemFormsReorderCalculations }, key: "FORMS_REORDER_CALCULATIONS"

      member -> { CloudPDF::Types::ChangeItemFormsUpdateWidget }, key: "FORMS_UPDATE_WIDGET"

      member -> { CloudPDF::Types::ChangeItemMetadataUpdate }, key: "METADATA_UPDATE"

      member -> { CloudPDF::Types::ChangeItemMetadataUpdateCustom }, key: "METADATA_UPDATE_CUSTOM"

      member -> { CloudPDF::Types::ChangeItemOutlineCreate }, key: "OUTLINE_CREATE"

      member -> { CloudPDF::Types::ChangeItemOutlineUpdate }, key: "OUTLINE_UPDATE"

      member -> { CloudPDF::Types::ChangeItemOutlineMove }, key: "OUTLINE_MOVE"

      member -> { CloudPDF::Types::ChangeItemOutlineDelete }, key: "OUTLINE_DELETE"

      member -> { CloudPDF::Types::ChangeItemOutlineRestore }, key: "OUTLINE_RESTORE"

      member -> { CloudPDF::Types::ChangeItemPagesRotate }, key: "PAGES_ROTATE"

      member -> { CloudPDF::Types::ChangeItemPagesReorder }, key: "PAGES_REORDER"

      member -> { CloudPDF::Types::ChangeItemPagesDelete }, key: "PAGES_DELETE"

      member -> { CloudPDF::Types::ChangeItemPagesInsertBlank }, key: "PAGES_INSERT_BLANK"

      member -> { CloudPDF::Types::ChangeItemPagesInsert }, key: "PAGES_INSERT"

      member -> { CloudPDF::Types::ChangeItemPagesRestore }, key: "PAGES_RESTORE"

      member -> { CloudPDF::Types::ChangeItemAttachmentsCreate }, key: "ATTACHMENTS_CREATE"

      member -> { CloudPDF::Types::ChangeItemAttachmentsDelete }, key: "ATTACHMENTS_DELETE"

      member -> { CloudPDF::Types::ChangeItemAttachmentsRestore }, key: "ATTACHMENTS_RESTORE"
    end
  end
end
