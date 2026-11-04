# frozen_string_literal: true

module CloudPDF
  module Types
    class ModuleManifest < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :description, -> { String }, optional: true, nullable: false

      field :permissions, -> { Internal::Types::Array[CloudPDF::Types::ModulePermission] }, optional: false, nullable: false

      field :meters, -> { Internal::Types::Array[CloudPDF::Types::ModuleMeter] }, optional: false, nullable: false

      field :requires, -> { CloudPDF::Types::ModuleManifestRequires }, optional: false, nullable: false
    end
  end
end
