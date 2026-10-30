# frozen_string_literal: true

module CloudPDF
  module Grants
    module Types
      module GrantsUpdateRequestVisitorIdentityAsk
        extend CloudPDF::Internal::Types::Enum

        ON_OPEN = "on-open"
        BEFORE_FIRST_CHANGE = "before-first-change"
      end
    end
  end
end
