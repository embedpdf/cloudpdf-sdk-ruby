# frozen_string_literal: true

module CloudPDF
  module Types
    class FontProgramInfoCoversItem < Internal::Types::Model
      field :start, -> { Integer }, optional: false, nullable: false

      field :count, -> { Integer }, optional: false, nullable: false
    end
  end
end
