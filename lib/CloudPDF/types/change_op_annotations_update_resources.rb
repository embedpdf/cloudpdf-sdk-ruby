# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpAnnotationsUpdateResources < Internal::Types::Model
      field :appearance, -> { String }, optional: true, nullable: false

      field :file, -> { String }, optional: true, nullable: false
    end
  end
end
