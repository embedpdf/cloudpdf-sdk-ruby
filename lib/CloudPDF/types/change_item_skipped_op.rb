# frozen_string_literal: true

module CloudPDF
  module Types
    module ChangeItemSkippedOp
      extend CloudPDF::Internal::Types::Enum

      ANNOTATIONS_CREATE = "annotations.create"
      ANNOTATIONS_UPDATE = "annotations.update"
      ANNOTATIONS_DELETE = "annotations.delete"
      ANNOTATIONS_REORDER = "annotations.reorder"
      FORMS_SET_VALUE = "forms.setValue"
      FORMS_SET_DISPLAY = "forms.setDisplay"
      FORMS_SET_APPEARANCE_TEXT = "forms.setAppearanceText"
      FORMS_RESET = "forms.reset"
      FORMS_CREATE = "forms.create"
      FORMS_UPDATE = "forms.update"
      FORMS_DELETE = "forms.delete"
      FORMS_ADD_WIDGET = "forms.addWidget"
      FORMS_REMOVE_WIDGET = "forms.removeWidget"
      FORMS_DELETE_WIDGET = "forms.deleteWidget"
      FORMS_REORDER_CALCULATIONS = "forms.reorderCalculations"
      FORMS_REORDER_WIDGETS = "forms.reorderWidgets"
      FORMS_UPDATE_WIDGET = "forms.updateWidget"
      FORMS_SET_SIGNATURE_APPEARANCE = "forms.setSignatureAppearance"
      METADATA_UPDATE = "metadata.update"
      METADATA_UPDATE_CUSTOM = "metadata.updateCustom"
      OUTLINE_CREATE = "outline.create"
      OUTLINE_UPDATE = "outline.update"
      OUTLINE_MOVE = "outline.move"
      OUTLINE_DELETE = "outline.delete"
      PAGES_ROTATE = "pages.rotate"
      PAGES_REORDER = "pages.reorder"
      PAGES_DELETE = "pages.delete"
      PAGES_INSERT_BLANK = "pages.insertBlank"
      PAGES_INSERT = "pages.insert"
      ATTACHMENTS_CREATE = "attachments.create"
      ATTACHMENTS_DELETE = "attachments.delete"
      ANNOTATIONS_RESTORE = "annotations.restore"
      FORMS_RESTORE = "forms.restore"
      FORMS_RESTORE_WIDGET = "forms.restoreWidget"
      OUTLINE_RESTORE = "outline.restore"
      PAGES_RESTORE = "pages.restore"
      ATTACHMENTS_RESTORE = "attachments.restore"
    end
  end
end
