# frozen_string_literal: true

module CloudPDF
  module Types
    class AttachmentList < Internal::Types::Model
      field :attachments, -> { Internal::Types::Array[CloudPDF::Types::Attachment] }, optional: false, nullable: false
    end
  end
end
