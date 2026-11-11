# frozen_string_literal: true

module CloudPDF
  module Types
    module ChangeItemFormsCopyDroppedItemReason
      extend CloudPDF::Internal::Types::Enum

      NAME_CONFLICT = "name-conflict"
      NO_FIELD = "no-field"
      UNSUPPORTED_KIND = "unsupported-kind"
      SCRIPT_NOT_ALLOWED = "script-not-allowed"
      UNSUPPORTED_ACTION = "unsupported-action"
    end
  end
end
