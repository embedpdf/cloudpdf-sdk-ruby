# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemStrikeout < Internal::Types::Model
      field :ref, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemStrikeoutRef }, optional: false, nullable: false

      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"

      field :index, -> { Integer }, optional: false, nullable: false

      field :identity_quality, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemStrikeoutIdentityQuality }, optional: false, nullable: false, api_name: "identityQuality"

      field :nm, -> { String }, optional: false, nullable: true

      field :flags, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemStrikeoutFlags }, optional: false, nullable: false

      field :rect, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemStrikeoutRect }, optional: false, nullable: false

      field :contents, -> { String }, optional: false, nullable: true

      field :author, -> { String }, optional: false, nullable: true

      field :created, -> { String }, optional: false, nullable: true

      field :modified, -> { String }, optional: false, nullable: true

      field :blend_mode, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemStrikeoutBlendMode }, optional: false, nullable: false, api_name: "blendMode"

      field :in_reply_to, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemStrikeoutInReplyTo }, optional: false, nullable: true, api_name: "inReplyTo"

      field :reply_type, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemStrikeoutReplyType }, optional: false, nullable: true, api_name: "replyType"

      field :user_id, -> { String }, optional: true, nullable: false, api_name: "userId"

      field :group_id, -> { String }, optional: true, nullable: false, api_name: "groupId"

      field :created_by, -> { String }, optional: true, nullable: false, api_name: "createdBy"

      field :updated_by, -> { String }, optional: true, nullable: false, api_name: "updatedBy"

      field :actions, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemStrikeoutActions }, optional: true, nullable: false

      field :color, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemStrikeoutColor }, optional: false, nullable: false

      field :opacity, -> { Integer }, optional: false, nullable: false

      field :quad_points, -> { Internal::Types::Array[CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemStrikeoutQuadPointsItem] }, optional: false, nullable: false, api_name: "quadPoints"

      field :intent, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemStrikeoutIntent }, optional: false, nullable: true
    end
  end
end
