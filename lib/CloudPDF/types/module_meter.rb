# frozen_string_literal: true

module CloudPDF
  module Types
    class ModuleMeter < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :label, -> { String }, optional: false, nullable: false

      field :unit, -> { String }, optional: false, nullable: false

      field :description, -> { String }, optional: true, nullable: false
    end
  end
end
