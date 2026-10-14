# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationUnderlineQuadPointsItemUpperLeft < Internal::Types::Model
      field :x, -> { Integer }, optional: false, nullable: false

      field :y, -> { Integer }, optional: false, nullable: false
    end
  end
end
