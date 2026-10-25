# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpPagesDelete < Internal::Types::Model
      field :pages, -> { Internal::Types::Array[CloudPDF::Types::PageRef] }, optional: false, nullable: false
    end
  end
end
