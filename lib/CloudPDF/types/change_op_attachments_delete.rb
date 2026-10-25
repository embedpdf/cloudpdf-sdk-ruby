# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpAttachmentsDelete < Internal::Types::Model
      field :ref, -> { CloudPDF::Types::AttachmentRef }, optional: false, nullable: false
    end
  end
end
