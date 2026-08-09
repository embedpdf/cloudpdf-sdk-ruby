# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemCircle < Internal::Types::Model
      field :ref, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemCircleRef }, optional: false, nullable: false

      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"

      field :index, -> { Integer }, optional: false, nullable: false

      field :identity_quality, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemCircleIdentityQuality }, optional: false, nullable: false, api_name: "identityQuality"

      field :nm, -> { String }, optional: false, nullable: true

      field :flags, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemCircleFlags }, optional: false, nullable: false

      field :rect, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemCircleRect }, optional: false, nullable: false

      field :contents, -> { String }, optional: false, nullable: true

      field :author, -> { String }, optional: false, nullable: true

      field :created, -> { String }, optional: false, nullable: true

      field :modified, -> { String }, optional: false, nullable: true

      field :blend_mode, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemCircleBlendMode }, optional: false, nullable: false, api_name: "blendMode"

      field :in_reply_to, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemCircleInReplyTo }, optional: false, nullable: true, api_name: "inReplyTo"

      field :reply_type, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemCircleReplyType }, optional: false, nullable: true, api_name: "replyType"

      field :user_id, -> { String }, optional: true, nullable: false, api_name: "userId"

      field :group_id, -> { String }, optional: true, nullable: false, api_name: "groupId"

      field :created_by, -> { String }, optional: true, nullable: false, api_name: "createdBy"

      field :updated_by, -> { String }, optional: true, nullable: false, api_name: "updatedBy"

      field :actions, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemCircleActions }, optional: true, nullable: false

      field :color, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemCircleColor }, optional: false, nullable: false

      field :opacity, -> { Integer }, optional: false, nullable: false

      field :stroke_width, -> { Integer }, optional: false, nullable: false, api_name: "strokeWidth"

      field :border_style, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemCircleBorderStyle }, optional: false, nullable: false, api_name: "borderStyle"

      field :dash_array, -> { Internal::Types::Array[Integer] }, optional: true, nullable: false, api_name: "dashArray"

      field :interior_color, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemCircleInteriorColor }, optional: false, nullable: true, api_name: "interiorColor"

      field :cloudy_intensity, -> { Integer }, optional: false, nullable: true, api_name: "cloudyIntensity"

      field :rect_differences, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemCircleRectDifferences }, optional: false, nullable: true, api_name: "rectDifferences"

      field :rotation, -> { Integer }, optional: true, nullable: false

      field :unrotated_rect, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemCircleUnrotatedRect }, optional: true, nullable: false, api_name: "unrotatedRect"
    end
  end
end
