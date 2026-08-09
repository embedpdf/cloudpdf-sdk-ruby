# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemCaretRect < Internal::Types::Model
      field :left, -> { Integer }, optional: false, nullable: false

      field :bottom, -> { Integer }, optional: false, nullable: false

      field :right, -> { Integer }, optional: false, nullable: false

      field :top, -> { Integer }, optional: false, nullable: false
    end
  end
end
