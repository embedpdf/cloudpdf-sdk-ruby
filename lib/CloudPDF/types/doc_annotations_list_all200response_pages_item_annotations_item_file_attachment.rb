# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFileAttachment < Internal::Types::Model
      field :ref, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFileAttachmentRef }, optional: false, nullable: false

      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"

      field :index, -> { Integer }, optional: false, nullable: false

      field :identity_quality, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFileAttachmentIdentityQuality }, optional: false, nullable: false, api_name: "identityQuality"

      field :nm, -> { String }, optional: false, nullable: true

      field :flags, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFileAttachmentFlags }, optional: false, nullable: false

      field :rect, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFileAttachmentRect }, optional: false, nullable: false

      field :contents, -> { String }, optional: false, nullable: true

      field :subject, -> { String }, optional: false, nullable: true

      field :author, -> { String }, optional: false, nullable: true

      field :created, -> { String }, optional: false, nullable: true

      field :modified, -> { String }, optional: false, nullable: true

      field :blend_mode, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFileAttachmentBlendMode }, optional: false, nullable: false, api_name: "blendMode"

      field :in_reply_to, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFileAttachmentInReplyTo }, optional: false, nullable: true, api_name: "inReplyTo"

      field :reply_type, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFileAttachmentReplyType }, optional: false, nullable: true, api_name: "replyType"

      field :user_id, -> { String }, optional: true, nullable: false, api_name: "userId"

      field :group_id, -> { String }, optional: true, nullable: false, api_name: "groupId"

      field :created_by, -> { String }, optional: true, nullable: false, api_name: "createdBy"

      field :updated_by, -> { String }, optional: true, nullable: false, api_name: "updatedBy"

      field :actions, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFileAttachmentActions }, optional: true, nullable: false

      field :color, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFileAttachmentColor }, optional: false, nullable: false

      field :opacity, -> { Integer }, optional: false, nullable: false

      field :icon, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFileAttachmentIcon }, optional: false, nullable: false

      field :file, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFileAttachmentFile }, optional: false, nullable: false
    end
  end
end
