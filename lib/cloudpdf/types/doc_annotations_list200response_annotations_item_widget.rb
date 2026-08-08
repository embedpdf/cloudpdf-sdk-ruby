# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemWidget < Internal::Types::Model
      field :ref, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetRef }, optional: false, nullable: false

      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"

      field :index, -> { Integer }, optional: false, nullable: false

      field :identity_quality, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetIdentityQuality }, optional: false, nullable: false, api_name: "identityQuality"

      field :nm, -> { String }, optional: false, nullable: true

      field :flags, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetFlags }, optional: false, nullable: false

      field :rect, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetRect }, optional: false, nullable: false

      field :contents, -> { String }, optional: false, nullable: true

      field :author, -> { String }, optional: false, nullable: true

      field :created, -> { String }, optional: false, nullable: true

      field :modified, -> { String }, optional: false, nullable: true

      field :blend_mode, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetBlendMode }, optional: false, nullable: false, api_name: "blendMode"

      field :in_reply_to, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetInReplyTo }, optional: false, nullable: true, api_name: "inReplyTo"

      field :reply_type, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetReplyType }, optional: false, nullable: true, api_name: "replyType"

      field :user_id, -> { String }, optional: true, nullable: false, api_name: "userId"

      field :group_id, -> { String }, optional: true, nullable: false, api_name: "groupId"

      field :created_by, -> { String }, optional: true, nullable: false, api_name: "createdBy"

      field :updated_by, -> { String }, optional: true, nullable: false, api_name: "updatedBy"

      field :actions, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetActions }, optional: true, nullable: false

      field :color, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetColor }, optional: false, nullable: true

      field :interior_color, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetInteriorColor }, optional: false, nullable: true, api_name: "interiorColor"

      field :stroke_width, -> { Integer }, optional: false, nullable: false, api_name: "strokeWidth"

      field :border_style, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetBorderStyle }, optional: false, nullable: false, api_name: "borderStyle"

      field :font_family, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetFontFamily }, optional: true, nullable: false, api_name: "fontFamily"

      field :font_size, -> { Integer }, optional: true, nullable: false, api_name: "fontSize"

      field :font_color, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetFontColor }, optional: true, nullable: false, api_name: "fontColor"

      field :text_align, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetTextAlign }, optional: false, nullable: false, api_name: "textAlign"

      field :field_object_number, -> { Integer }, optional: false, nullable: false, api_name: "fieldObjectNumber"

      field :field_family, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetFieldFamily }, optional: false, nullable: false, api_name: "fieldFamily"
    end
  end
end
