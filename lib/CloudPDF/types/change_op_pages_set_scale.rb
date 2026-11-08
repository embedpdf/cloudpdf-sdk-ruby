# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpPagesSetScale < Internal::Types::Model
      field :pages, -> { Internal::Types::Array[CloudPDF::Types::PageRef] }, optional: false, nullable: false

      field :measure, -> { CloudPDF::Types::ChangeOpPagesSetScaleMeasure }, optional: false, nullable: true
    end
  end
end
