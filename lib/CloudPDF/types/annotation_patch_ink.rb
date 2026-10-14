# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatchInk < Internal::Types::Model
      field :ref, -> { Object }, optional: true, nullable: false

      field :page, -> { Object }, optional: true, nullable: false

      field :has_appearance, -> { Object }, optional: true, nullable: false, api_name: "hasAppearance"

      field :appearance_state, -> { Object }, optional: true, nullable: false, api_name: "appearanceState"

      field :nm, -> { String }, optional: true, nullable: false

      field :rect, -> { CloudPDF::Types::AnnotationPatchInkRect }, optional: true, nullable: false

      field :contents, -> { String }, optional: true, nullable: false

      field :subject, -> { String }, optional: true, nullable: false

      field :blend_mode, -> { CloudPDF::Types::AnnotationPatchInkBlendMode }, optional: true, nullable: false, api_name: "blendMode"

      field :invisible, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :hidden, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :print, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :no_zoom, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "noZoom"

      field :no_rotate, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "noRotate"

      field :no_view, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "noView"

      field :read_only, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "readOnly"

      field :locked, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :toggle_no_view, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "toggleNoView"

      field :locked_contents, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "lockedContents"

      field :reply, -> { CloudPDF::Types::AnnotationPatchInkReply }, optional: true, nullable: false

      field :popup, -> { Object }, optional: true, nullable: false

      field :group_id, -> { String }, optional: true, nullable: false, api_name: "groupId"

      field :author, -> { Object }, optional: true, nullable: false

      field :created_at, -> { Object }, optional: true, nullable: false, api_name: "createdAt"

      field :modified_at, -> { Object }, optional: true, nullable: false, api_name: "modifiedAt"

      field :user_id, -> { Object }, optional: true, nullable: false, api_name: "userId"

      field :created_by, -> { Object }, optional: true, nullable: false, api_name: "createdBy"

      field :modified_by, -> { Object }, optional: true, nullable: false, api_name: "modifiedBy"

      field :imported_by, -> { Object }, optional: true, nullable: false, api_name: "importedBy"

      field :actions, -> { Object }, optional: true, nullable: false

      field :color, -> { String }, optional: true, nullable: false

      field :opacity, -> { Integer }, optional: true, nullable: false

      field :stroke_width, -> { Integer }, optional: true, nullable: false, api_name: "strokeWidth"

      field :border_style, -> { CloudPDF::Types::AnnotationPatchInkBorderStyle }, optional: true, nullable: false, api_name: "borderStyle"

      field :dash_array, -> { Internal::Types::Array[Integer] }, optional: true, nullable: false, api_name: "dashArray"

      field :ink_list, -> { CloudPDF::Types::AnnotationPatchInkInkList }, optional: true, nullable: false, api_name: "inkList"

      field :intent, -> { CloudPDF::Types::AnnotationPatchInkIntent }, optional: true, nullable: false

      field :rotation, -> { Integer }, optional: true, nullable: false
    end
  end
end
