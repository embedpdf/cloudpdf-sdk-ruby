# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemRedact < Internal::Types::Model
      field :ref, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemRedactRef }, optional: false, nullable: false

      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"

      field :index, -> { Integer }, optional: false, nullable: false

      field :identity_quality, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemRedactIdentityQuality }, optional: false, nullable: false, api_name: "identityQuality"

      field :nm, -> { String }, optional: false, nullable: true

      field :flags, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemRedactFlags }, optional: false, nullable: false

      field :rect, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemRedactRect }, optional: false, nullable: false

      field :contents, -> { String }, optional: false, nullable: true

      field :author, -> { String }, optional: false, nullable: true

      field :created, -> { String }, optional: false, nullable: true

      field :modified, -> { String }, optional: false, nullable: true

      field :blend_mode, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemRedactBlendMode }, optional: false, nullable: false, api_name: "blendMode"

      field :in_reply_to, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemRedactInReplyTo }, optional: false, nullable: true, api_name: "inReplyTo"

      field :reply_type, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemRedactReplyType }, optional: false, nullable: true, api_name: "replyType"

      field :user_id, -> { String }, optional: true, nullable: false, api_name: "userId"

      field :group_id, -> { String }, optional: true, nullable: false, api_name: "groupId"

      field :created_by, -> { String }, optional: true, nullable: false, api_name: "createdBy"

      field :updated_by, -> { String }, optional: true, nullable: false, api_name: "updatedBy"

      field :actions, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemRedactActions }, optional: true, nullable: false

      field :quad_points, -> { Internal::Types::Array[CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemRedactQuadPointsItem] }, optional: false, nullable: false, api_name: "quadPoints"

      field :color, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemRedactColor }, optional: false, nullable: false

      field :opacity, -> { Integer }, optional: false, nullable: false

      field :interior_color, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemRedactInteriorColor }, optional: false, nullable: true, api_name: "interiorColor"

      field :overlay_text, -> { String }, optional: false, nullable: true, api_name: "overlayText"

      field :repeat, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :font_family, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemRedactFontFamily }, optional: false, nullable: false, api_name: "fontFamily"

      field :font_size, -> { Integer }, optional: false, nullable: false, api_name: "fontSize"

      field :font_color, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemRedactFontColor }, optional: false, nullable: false, api_name: "fontColor"

      field :text_align, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemRedactTextAlign }, optional: false, nullable: false, api_name: "textAlign"
    end
  end
end
