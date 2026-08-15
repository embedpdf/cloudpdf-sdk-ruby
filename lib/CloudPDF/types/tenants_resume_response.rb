# frozen_string_literal: true

module CloudPDF
  module Types
    class TenantsResumeResponse < Internal::Types::Model
      field :error, -> { CloudPDF::Types::TenantsResumeResponseError }, optional: false, nullable: false
    end
  end
end
