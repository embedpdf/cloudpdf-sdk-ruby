# frozen_string_literal: true

module CloudPDF
  module Types
    class FormMutationMeta < Internal::Types::Model
      field :affected_pages, -> { Internal::Types::Array[CloudPDF::Types::PageRef] }, optional: false, nullable: false, api_name: "affectedPages"

      field :cache_delta, -> { CloudPDF::Types::CacheDelta }, optional: false, nullable: true, api_name: "cacheDelta"

      field :op_id, -> { String }, optional: false, nullable: false, api_name: "opId"

      field :undoable, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :changed_fields, -> { Internal::Types::Array[CloudPDF::Types::FormFieldRef] }, optional: false, nullable: false, api_name: "changedFields"

      field :changed_widgets, -> { Internal::Types::Array[CloudPDF::Types::FormWidget] }, optional: false, nullable: false, api_name: "changedWidgets"

      field :redrawn_widgets, -> { Internal::Types::Array[CloudPDF::Types::FormWidget] }, optional: false, nullable: false, api_name: "redrawnWidgets"
    end
  end
end
