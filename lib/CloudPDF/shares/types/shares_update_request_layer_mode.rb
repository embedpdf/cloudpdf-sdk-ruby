# frozen_string_literal: true

module CloudPDF
  module Shares
    module Types
      module SharesUpdateRequestLayerMode
        extend CloudPDF::Internal::Types::Enum

        SHARED = "shared"
        PER_VISITOR = "per-visitor"
      end
    end
  end
end
