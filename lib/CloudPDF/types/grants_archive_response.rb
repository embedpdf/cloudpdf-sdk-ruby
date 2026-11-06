# frozen_string_literal: true

module CloudPDF
  module Types
    class GrantsArchiveResponse < Internal::Types::Model
      field :grant, -> { CloudPDF::Types::GrantsArchiveResponseGrant }, optional: false, nullable: false
    end
  end
end
