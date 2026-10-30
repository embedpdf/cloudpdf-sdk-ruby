# frozen_string_literal: true

module CloudPDF
  module Grants
    module Types
      module GrantsUpdateRequestLayerMode
        extend CloudPDF::Internal::Types::Enum

        SHARED = "shared"
        PER_VISITOR = "per-visitor"
      end
    end
  end
end
