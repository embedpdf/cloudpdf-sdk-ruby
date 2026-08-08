# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemFreeText < Internal::Types::Model
      field :ref, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemFreeTextRef }, optional: false, nullable: false

      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"

      field :index, -> { Integer }, optional: false, nullable: false

      field :identity_quality, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemFreeTextIdentityQuality }, optional: false, nullable: false, api_name: "identityQuality"

      field :nm, -> { String }, optional: false, nullable: true

      field :flags, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemFreeTextFlags }, optional: false, nullable: false

      field :rect, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemFreeTextRect }, optional: false, nullable: false

      field :contents, -> { String }, optional: false, nullable: true

      field :author, -> { String }, optional: false, nullable: true

      field :created, -> { String }, optional: false, nullable: true

      field :modified, -> { String }, optional: false, nullable: true

      field :blend_mode, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemFreeTextBlendMode }, optional: false, nullable: false, api_name: "blendMode"

      field :in_reply_to, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemFreeTextInReplyTo }, optional: false, nullable: true, api_name: "inReplyTo"

      field :reply_type, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemFreeTextReplyType }, optional: false, nullable: true, api_name: "replyType"

      field :user_id, -> { String }, optional: true, nullable: false, api_name: "userId"

      field :group_id, -> { String }, optional: true, nullable: false, api_name: "groupId"

      field :created_by, -> { String }, optional: true, nullable: false, api_name: "createdBy"

      field :updated_by, -> { String }, optional: true, nullable: false, api_name: "updatedBy"

      field :actions, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemFreeTextActions }, optional: true, nullable: false

      field :intent, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemFreeTextIntent }, optional: false, nullable: false

      field :font_family, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemFreeTextFontFamily }, optional: false, nullable: false, api_name: "fontFamily"

      field :font_size, -> { Integer }, optional: false, nullable: false, api_name: "fontSize"

      field :text_align, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemFreeTextTextAlign }, optional: false, nullable: false, api_name: "textAlign"

      field :color, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemFreeTextColor }, optional: false, nullable: false

      field :font_color, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemFreeTextFontColor }, optional: true, nullable: false, api_name: "fontColor"

      field :interior_color, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemFreeTextInteriorColor }, optional: false, nullable: true, api_name: "interiorColor"

      field :opacity, -> { Integer }, optional: false, nullable: false

      field :stroke_width, -> { Integer }, optional: false, nullable: false, api_name: "strokeWidth"

      field :border_style, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemFreeTextBorderStyle }, optional: false, nullable: false, api_name: "borderStyle"

      field :dash_array, -> { Internal::Types::Array[Integer] }, optional: true, nullable: false, api_name: "dashArray"

      field :rect_differences, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemFreeTextRectDifferences }, optional: false, nullable: true, api_name: "rectDifferences"

      field :callout_line, -> { Internal::Types::Array[Object] }, optional: true, nullable: false, api_name: "calloutLine"

      field :line_ending, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemFreeTextLineEnding }, optional: true, nullable: false, api_name: "lineEnding"

      field :rotation, -> { Integer }, optional: true, nullable: false

      field :unrotated_rect, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemFreeTextUnrotatedRect }, optional: true, nullable: false, api_name: "unrotatedRect"
    end
  end
end
