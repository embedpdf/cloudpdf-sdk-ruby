# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolygon < Internal::Types::Model
      field :ref, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolygonRef }, optional: false, nullable: false

      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"

      field :index, -> { Integer }, optional: false, nullable: false

      field :identity_quality, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolygonIdentityQuality }, optional: false, nullable: false, api_name: "identityQuality"

      field :nm, -> { String }, optional: false, nullable: true

      field :flags, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolygonFlags }, optional: false, nullable: false

      field :rect, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolygonRect }, optional: false, nullable: false

      field :contents, -> { String }, optional: false, nullable: true

      field :subject, -> { String }, optional: false, nullable: true

      field :author, -> { String }, optional: false, nullable: true

      field :created, -> { String }, optional: false, nullable: true

      field :modified, -> { String }, optional: false, nullable: true

      field :blend_mode, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolygonBlendMode }, optional: false, nullable: false, api_name: "blendMode"

      field :in_reply_to, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolygonInReplyTo }, optional: false, nullable: true, api_name: "inReplyTo"

      field :reply_type, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolygonReplyType }, optional: false, nullable: true, api_name: "replyType"

      field :user_id, -> { String }, optional: true, nullable: false, api_name: "userId"

      field :group_id, -> { String }, optional: true, nullable: false, api_name: "groupId"

      field :created_by, -> { String }, optional: true, nullable: false, api_name: "createdBy"

      field :updated_by, -> { String }, optional: true, nullable: false, api_name: "updatedBy"

      field :actions, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolygonActions }, optional: true, nullable: false

      field :color, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolygonColor }, optional: false, nullable: false

      field :opacity, -> { Integer }, optional: false, nullable: false

      field :stroke_width, -> { Integer }, optional: false, nullable: false, api_name: "strokeWidth"

      field :border_style, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolygonBorderStyle }, optional: false, nullable: false, api_name: "borderStyle"

      field :dash_array, -> { Internal::Types::Array[Integer] }, optional: true, nullable: false, api_name: "dashArray"

      field :interior_color, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolygonInteriorColor }, optional: false, nullable: true, api_name: "interiorColor"

      field :vertices, -> { Internal::Types::Array[CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolygonVerticesItem] }, optional: false, nullable: false

      field :rotation, -> { Integer }, optional: true, nullable: false

      field :cloudy_intensity, -> { Integer }, optional: false, nullable: true, api_name: "cloudyIntensity"
    end
  end
end
