# frozen_string_literal: true

module CloudPDF
  module Types
    class DocHeadResponseAccess < Internal::Types::Model
      field :required, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :reasons, -> { Internal::Types::Array[CloudPDF::Types::DocHeadResponseAccessReasonsItem] }, optional: false, nullable: false

      field :endpoint, -> { String }, optional: true, nullable: false
    end
  end
end
