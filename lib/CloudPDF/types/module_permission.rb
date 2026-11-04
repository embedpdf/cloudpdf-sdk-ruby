# frozen_string_literal: true

module CloudPDF
  module Types
    class ModulePermission < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :level, -> { CloudPDF::Types::ModulePermissionLevel }, optional: false, nullable: false

      field :label, -> { String }, optional: false, nullable: false

      field :description, -> { String }, optional: true, nullable: false

      field :replaces, -> { String }, optional: true, nullable: false

      field :bypassed_by, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "bypassedBy"
    end
  end
end
