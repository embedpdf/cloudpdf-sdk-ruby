# frozen_string_literal: true

module CloudPDF
  module Types
    module ModulePermissionLevel
      extend CloudPDF::Internal::Types::Enum

      DOCUMENT = "document"
      TENANT = "tenant"
    end
  end
end
