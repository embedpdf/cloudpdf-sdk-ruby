# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLine < Internal::Types::Model
      field :ref, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLineRef }, optional: false, nullable: false

      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"

      field :index, -> { Integer }, optional: false, nullable: false

      field :identity_quality, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLineIdentityQuality }, optional: false, nullable: false, api_name: "identityQuality"

      field :nm, -> { String }, optional: false, nullable: true

      field :flags, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLineFlags }, optional: false, nullable: false

      field :rect, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLineRect }, optional: false, nullable: false

      field :contents, -> { String }, optional: false, nullable: true

      field :subject, -> { String }, optional: false, nullable: true

      field :author, -> { String }, optional: false, nullable: true

      field :created, -> { String }, optional: false, nullable: true

      field :modified, -> { String }, optional: false, nullable: true

      field :blend_mode, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLineBlendMode }, optional: false, nullable: false, api_name: "blendMode"

      field :in_reply_to, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLineInReplyTo }, optional: false, nullable: true, api_name: "inReplyTo"

      field :reply_type, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLineReplyType }, optional: false, nullable: true, api_name: "replyType"

      field :user_id, -> { String }, optional: true, nullable: false, api_name: "userId"

      field :group_id, -> { String }, optional: true, nullable: false, api_name: "groupId"

      field :created_by, -> { String }, optional: true, nullable: false, api_name: "createdBy"

      field :updated_by, -> { String }, optional: true, nullable: false, api_name: "updatedBy"

      field :actions, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLineActions }, optional: true, nullable: false

      field :color, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLineColor }, optional: false, nullable: false

      field :opacity, -> { Integer }, optional: false, nullable: false

      field :stroke_width, -> { Integer }, optional: false, nullable: false, api_name: "strokeWidth"

      field :border_style, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLineBorderStyle }, optional: false, nullable: false, api_name: "borderStyle"

      field :dash_array, -> { Internal::Types::Array[Integer] }, optional: true, nullable: false, api_name: "dashArray"

      field :interior_color, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLineInteriorColor }, optional: false, nullable: true, api_name: "interiorColor"

      field :line_points, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLineLinePoints }, optional: false, nullable: false, api_name: "linePoints"

      field :line_endings, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLineLineEndings }, optional: false, nullable: false, api_name: "lineEndings"

      field :rotation, -> { Integer }, optional: true, nullable: false
    end
  end
end
