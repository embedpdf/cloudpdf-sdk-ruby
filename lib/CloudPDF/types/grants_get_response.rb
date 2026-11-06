# frozen_string_literal: true

module CloudPDF
  module Types
    class GrantsGetResponse < Internal::Types::Model
      field :grant, -> { CloudPDF::Types::GrantsGetResponseGrant }, optional: false, nullable: false
    end
  end
end
