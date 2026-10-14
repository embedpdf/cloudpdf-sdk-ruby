# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOp < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :type

      member -> { CloudPDF::Types::ChangeOpAnnotationsCreate }, key: "ANNOTATIONS_CREATE"

      member -> { CloudPDF::Types::ChangeOpAnnotationsUpdate }, key: "ANNOTATIONS_UPDATE"

      member -> { CloudPDF::Types::ChangeOpAnnotationsDelete }, key: "ANNOTATIONS_DELETE"

      member -> { CloudPDF::Types::ChangeOpAnnotationsReorder }, key: "ANNOTATIONS_REORDER"

      member -> { CloudPDF::Types::ChangeOpFormsSetValue }, key: "FORMS_SET_VALUE"

      member -> { CloudPDF::Types::ChangeOpFormsSetDisplay }, key: "FORMS_SET_DISPLAY"

      member -> { CloudPDF::Types::ChangeOpFormsSetAppearanceText }, key: "FORMS_SET_APPEARANCE_TEXT"

      member -> { CloudPDF::Types::ChangeOpFormsReset }, key: "FORMS_RESET"

      member -> { CloudPDF::Types::ChangeOpFormsCreate }, key: "FORMS_CREATE"

      member -> { CloudPDF::Types::ChangeOpFormsUpdate }, key: "FORMS_UPDATE"

      member -> { CloudPDF::Types::ChangeOpFormsDelete }, key: "FORMS_DELETE"

      member -> { CloudPDF::Types::ChangeOpFormsAddWidget }, key: "FORMS_ADD_WIDGET"

      member -> { CloudPDF::Types::ChangeOpFormsRemoveWidget }, key: "FORMS_REMOVE_WIDGET"

      member -> { CloudPDF::Types::ChangeOpFormsDeleteWidget }, key: "FORMS_DELETE_WIDGET"

      member -> { CloudPDF::Types::ChangeOpFormsReorderCalculations }, key: "FORMS_REORDER_CALCULATIONS"

      member -> { CloudPDF::Types::ChangeOpFormsReorderWidgets }, key: "FORMS_REORDER_WIDGETS"

      member -> { CloudPDF::Types::ChangeOpFormsUpdateWidget }, key: "FORMS_UPDATE_WIDGET"

      member -> { CloudPDF::Types::ChangeOpFormsSetSignatureAppearance }, key: "FORMS_SET_SIGNATURE_APPEARANCE"

      member -> { CloudPDF::Types::ChangeOpMetadataUpdate }, key: "METADATA_UPDATE"

      member -> { CloudPDF::Types::ChangeOpMetadataUpdateCustom }, key: "METADATA_UPDATE_CUSTOM"
    end
  end
end
