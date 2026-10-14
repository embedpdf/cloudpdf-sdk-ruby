# frozen_string_literal: true

module CloudPDF
  module Types
    class FormFieldDraftListboxOptionsItem < Internal::Types::Model
      field :label, -> { String }, optional: false, nullable: false

      field :value, -> { String }, optional: false, nullable: false
    end
  end
end
