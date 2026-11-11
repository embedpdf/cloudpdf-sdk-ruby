# frozen_string_literal: true

module CloudPDF
  module Types
    module ChangeItemAnnotationsCopyDroppedItemReason
      extend CloudPDF::Internal::Types::Enum

      UNSUPPORTED_KIND = "unsupported-kind"
      WIDGET = "widget"
      GEOSPATIAL = "geospatial"
      UNKNOWN_MEASURE = "unknown-measure"
      UNSUPPORTED_ACTION = "unsupported-action"
      UNSUPPORTED_VALUE = "unsupported-value"
      NAME_CONFLICT = "name-conflict"
      PARENT_DROPPED = "parent-dropped"
      PARENT_MISSING = "parent-missing"
      POPUP_TAKEN = "popup-taken"
    end
  end
end
