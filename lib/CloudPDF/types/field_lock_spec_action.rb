# frozen_string_literal: true

module CloudPDF
  module Types
    module FieldLockSpecAction
      extend CloudPDF::Internal::Types::Enum

      ALL = "all"
      INCLUDE = "include"
      EXCLUDE = "exclude"
    end
  end
end
