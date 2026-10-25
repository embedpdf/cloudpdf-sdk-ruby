# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpPagesReorder < Internal::Types::Model
      field :pages, -> { Internal::Types::Array[CloudPDF::Types::PageRef] }, optional: false, nullable: false

      field :position, -> { CloudPDF::Types::PagePosition }, optional: false, nullable: false
    end
  end
end
