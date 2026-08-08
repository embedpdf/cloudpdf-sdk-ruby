# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemFileAttachment < Internal::Types::Model
      field :ref, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemFileAttachmentRef }, optional: false, nullable: false

      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"

      field :index, -> { Integer }, optional: false, nullable: false

      field :identity_quality, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemFileAttachmentIdentityQuality }, optional: false, nullable: false, api_name: "identityQuality"

      field :nm, -> { String }, optional: false, nullable: true

      field :flags, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemFileAttachmentFlags }, optional: false, nullable: false

      field :rect, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemFileAttachmentRect }, optional: false, nullable: false

      field :contents, -> { String }, optional: false, nullable: true

      field :author, -> { String }, optional: false, nullable: true

      field :created, -> { String }, optional: false, nullable: true

      field :modified, -> { String }, optional: false, nullable: true

      field :blend_mode, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemFileAttachmentBlendMode }, optional: false, nullable: false, api_name: "blendMode"

      field :in_reply_to, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemFileAttachmentInReplyTo }, optional: false, nullable: true, api_name: "inReplyTo"

      field :reply_type, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemFileAttachmentReplyType }, optional: false, nullable: true, api_name: "replyType"

      field :user_id, -> { String }, optional: true, nullable: false, api_name: "userId"

      field :group_id, -> { String }, optional: true, nullable: false, api_name: "groupId"

      field :created_by, -> { String }, optional: true, nullable: false, api_name: "createdBy"

      field :updated_by, -> { String }, optional: true, nullable: false, api_name: "updatedBy"

      field :actions, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemFileAttachmentActions }, optional: true, nullable: false

      field :color, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemFileAttachmentColor }, optional: false, nullable: false

      field :opacity, -> { Integer }, optional: false, nullable: false

      field :icon, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemFileAttachmentIcon }, optional: false, nullable: false

      field :file, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemFileAttachmentFile }, optional: false, nullable: false
    end
  end
end
