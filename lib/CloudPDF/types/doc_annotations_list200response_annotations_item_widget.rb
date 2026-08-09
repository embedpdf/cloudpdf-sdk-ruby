# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemWidget < Internal::Types::Model
      field :ref, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetRef }, optional: false, nullable: false

      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"

      field :index, -> { Integer }, optional: false, nullable: false

      field :identity_quality, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetIdentityQuality }, optional: false, nullable: false, api_name: "identityQuality"

      field :nm, -> { String }, optional: false, nullable: true

      field :flags, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetFlags }, optional: false, nullable: false

      field :rect, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetRect }, optional: false, nullable: false

      field :contents, -> { String }, optional: false, nullable: true

      field :author, -> { String }, optional: false, nullable: true

      field :created, -> { String }, optional: false, nullable: true

      field :modified, -> { String }, optional: false, nullable: true

      field :blend_mode, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetBlendMode }, optional: false, nullable: false, api_name: "blendMode"

      field :in_reply_to, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetInReplyTo }, optional: false, nullable: true, api_name: "inReplyTo"

      field :reply_type, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetReplyType }, optional: false, nullable: true, api_name: "replyType"

      field :user_id, -> { String }, optional: true, nullable: false, api_name: "userId"

      field :group_id, -> { String }, optional: true, nullable: false, api_name: "groupId"

      field :created_by, -> { String }, optional: true, nullable: false, api_name: "createdBy"

      field :updated_by, -> { String }, optional: true, nullable: false, api_name: "updatedBy"

      field :actions, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetActions }, optional: true, nullable: false

      field :color, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetColor }, optional: false, nullable: true

      field :interior_color, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetInteriorColor }, optional: false, nullable: true, api_name: "interiorColor"

      field :stroke_width, -> { Integer }, optional: false, nullable: false, api_name: "strokeWidth"

      field :border_style, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetBorderStyle }, optional: false, nullable: false, api_name: "borderStyle"

      field :font_family, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetFontFamily }, optional: true, nullable: false, api_name: "fontFamily"

      field :font_size, -> { Integer }, optional: true, nullable: false, api_name: "fontSize"

      field :font_color, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetFontColor }, optional: true, nullable: false, api_name: "fontColor"

      field :text_align, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetTextAlign }, optional: false, nullable: false, api_name: "textAlign"

      field :field_object_number, -> { Integer }, optional: false, nullable: false, api_name: "fieldObjectNumber"

      field :field_family, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetFieldFamily }, optional: false, nullable: false, api_name: "fieldFamily"
    end
  end
end
