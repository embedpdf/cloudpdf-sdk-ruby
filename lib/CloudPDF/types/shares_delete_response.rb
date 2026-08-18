# frozen_string_literal: true

module CloudPDF
  module Types
    class SharesDeleteResponse < Internal::Types::Model
      field :error, -> { CloudPDF::Types::SharesDeleteResponseError }, optional: false, nullable: false
    end
  end
end
