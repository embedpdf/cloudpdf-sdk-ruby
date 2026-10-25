# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpPagesRotate < Internal::Types::Model
      field :pages, -> { Internal::Types::Array[CloudPDF::Types::PageRef] }, optional: false, nullable: false

      field :rotation, -> { Integer }, optional: false, nullable: false
    end
  end
end
