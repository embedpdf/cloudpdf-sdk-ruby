# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationLink < Internal::Types::Model
      field :ref, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false

      field :page, -> { CloudPDF::Types::PageRef }, optional: false, nullable: false

      field :has_appearance, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "hasAppearance"

      field :appearance_state, -> { String }, optional: false, nullable: true, api_name: "appearanceState"

      field :nm, -> { String }, optional: false, nullable: true

      field :rect, -> { CloudPDF::Types::AnnotationLinkRect }, optional: false, nullable: false

      field :contents, -> { String }, optional: false, nullable: true

      field :subject, -> { String }, optional: false, nullable: true

      field :blend_mode, -> { CloudPDF::Types::AnnotationLinkBlendMode }, optional: false, nullable: false, api_name: "blendMode"

      field :invisible, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :hidden, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :print, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :no_zoom, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "noZoom"

      field :no_rotate, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "noRotate"

      field :no_view, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "noView"

      field :read_only, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "readOnly"

      field :locked, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :toggle_no_view, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "toggleNoView"

      field :locked_contents, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "lockedContents"

      field :reply, -> { CloudPDF::Types::AnnotationLinkReply }, optional: false, nullable: true

      field :popup, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: true

      field :group_id, -> { String }, optional: false, nullable: true, api_name: "groupId"

      field :author, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: true, api_name: "createdAt"

      field :modified_at, -> { String }, optional: false, nullable: true, api_name: "modifiedAt"

      field :user_id, -> { String }, optional: false, nullable: true, api_name: "userId"

      field :created_by, -> { String }, optional: false, nullable: true, api_name: "createdBy"

      field :modified_by, -> { String }, optional: false, nullable: true, api_name: "modifiedBy"

      field :imported_by, -> { String }, optional: false, nullable: true, api_name: "importedBy"

      field :actions, -> { CloudPDF::Types::PdfAnnotationActions }, optional: false, nullable: true

      field :target, -> { CloudPDF::Types::PdfLinkTarget }, optional: false, nullable: true
    end
  end
end
