# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemRedact < Internal::Types::Model
      field :ref, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemRedactRef }, optional: false, nullable: false

      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"

      field :index, -> { Integer }, optional: false, nullable: false

      field :identity_quality, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemRedactIdentityQuality }, optional: false, nullable: false, api_name: "identityQuality"

      field :nm, -> { String }, optional: false, nullable: true

      field :flags, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemRedactFlags }, optional: false, nullable: false

      field :rect, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemRedactRect }, optional: false, nullable: false

      field :contents, -> { String }, optional: false, nullable: true

      field :author, -> { String }, optional: false, nullable: true

      field :created, -> { String }, optional: false, nullable: true

      field :modified, -> { String }, optional: false, nullable: true

      field :blend_mode, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemRedactBlendMode }, optional: false, nullable: false, api_name: "blendMode"

      field :in_reply_to, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemRedactInReplyTo }, optional: false, nullable: true, api_name: "inReplyTo"

      field :reply_type, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemRedactReplyType }, optional: false, nullable: true, api_name: "replyType"

      field :user_id, -> { String }, optional: true, nullable: false, api_name: "userId"

      field :group_id, -> { String }, optional: true, nullable: false, api_name: "groupId"

      field :created_by, -> { String }, optional: true, nullable: false, api_name: "createdBy"

      field :updated_by, -> { String }, optional: true, nullable: false, api_name: "updatedBy"

      field :actions, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemRedactActions }, optional: true, nullable: false

      field :quad_points, -> { Internal::Types::Array[Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemRedactQuadPointsItem] }, optional: false, nullable: false, api_name: "quadPoints"

      field :color, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemRedactColor }, optional: false, nullable: false

      field :opacity, -> { Integer }, optional: false, nullable: false

      field :interior_color, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemRedactInteriorColor }, optional: false, nullable: true, api_name: "interiorColor"

      field :overlay_text, -> { String }, optional: false, nullable: true, api_name: "overlayText"

      field :repeat, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :font_family, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemRedactFontFamily }, optional: false, nullable: false, api_name: "fontFamily"

      field :font_size, -> { Integer }, optional: false, nullable: false, api_name: "fontSize"

      field :font_color, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemRedactFontColor }, optional: false, nullable: false, api_name: "fontColor"

      field :text_align, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemRedactTextAlign }, optional: false, nullable: false, api_name: "textAlign"
    end
  end
end
