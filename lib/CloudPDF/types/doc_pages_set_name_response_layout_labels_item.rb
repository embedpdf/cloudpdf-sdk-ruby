# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesSetNameResponseLayoutLabelsItem < Internal::Types::Model
      field :first_page, -> { Integer }, optional: false, nullable: false, api_name: "firstPage"

      field :style, -> { CloudPDF::Types::DocPagesSetNameResponseLayoutLabelsItemStyle }, optional: false, nullable: true

      field :first_number, -> { Integer }, optional: false, nullable: false, api_name: "firstNumber"

      field :prefix, -> { String }, optional: false, nullable: false
    end
  end
end
