# frozen_string_literal: true

module CloudPDF
  module Types
    module ChangeItemAnnotationsUpdateAppearanceAction
      extend CloudPDF::Internal::Types::Enum

      PRESERVED = "preserved"
      REGENERATED = "regenerated"
      GENERATION_UNAVAILABLE = "generation-unavailable"
      RESTORED = "restored"
    end
  end
end
