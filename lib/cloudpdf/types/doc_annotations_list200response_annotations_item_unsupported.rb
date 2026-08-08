# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemUnsupported < Internal::Types::Model
      field :ref, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemUnsupportedRef }, optional: false, nullable: false

      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"

      field :index, -> { Integer }, optional: false, nullable: false

      field :identity_quality, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemUnsupportedIdentityQuality }, optional: false, nullable: false, api_name: "identityQuality"

      field :nm, -> { String }, optional: false, nullable: true

      field :flags, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemUnsupportedFlags }, optional: false, nullable: false

      field :rect, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemUnsupportedRect }, optional: false, nullable: false

      field :contents, -> { String }, optional: false, nullable: true

      field :author, -> { String }, optional: false, nullable: true

      field :created, -> { String }, optional: false, nullable: true

      field :modified, -> { String }, optional: false, nullable: true

      field :blend_mode, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemUnsupportedBlendMode }, optional: false, nullable: false, api_name: "blendMode"

      field :in_reply_to, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemUnsupportedInReplyTo }, optional: false, nullable: true, api_name: "inReplyTo"

      field :reply_type, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemUnsupportedReplyType }, optional: false, nullable: true, api_name: "replyType"

      field :user_id, -> { String }, optional: true, nullable: false, api_name: "userId"

      field :group_id, -> { String }, optional: true, nullable: false, api_name: "groupId"

      field :created_by, -> { String }, optional: true, nullable: false, api_name: "createdBy"

      field :updated_by, -> { String }, optional: true, nullable: false, api_name: "updatedBy"

      field :actions, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemUnsupportedActions }, optional: true, nullable: false

      field :raw_subtype_code, -> { Integer }, optional: false, nullable: false, api_name: "rawSubtypeCode"

      field :raw_subtype_name, -> { String }, optional: false, nullable: true, api_name: "rawSubtypeName"
    end
  end
end
