# frozen_string_literal: true

module CloudPDF
  module Types
    class DocText200Response < Internal::Types::Model
      field :text, -> { String }, optional: false, nullable: false

      field :char_count, -> { Integer }, optional: false, nullable: false, api_name: "charCount"
    end
  end
end
