# frozen_string_literal: true

module CloudPDF
  module Types
    class GrantsUpdateResponse < Internal::Types::Model
      field :grant, -> { CloudPDF::Types::GrantsUpdateResponseGrant }, optional: false, nullable: false
    end
  end
end
