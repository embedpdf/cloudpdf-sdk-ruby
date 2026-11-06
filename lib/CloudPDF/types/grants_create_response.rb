# frozen_string_literal: true

module CloudPDF
  module Types
    class GrantsCreateResponse < Internal::Types::Model
      field :grant, -> { CloudPDF::Types::GrantsCreateResponseGrant }, optional: false, nullable: false
    end
  end
end
