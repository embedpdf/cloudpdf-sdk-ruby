# frozen_string_literal: true

module CloudPDF
  module Types
    class ModuleManifestRequires < Internal::Types::Model
      field :document, -> { Internal::Types::Array[String] }, optional: false, nullable: false
    end
  end
end
