# frozen_string_literal: true

module CloudPDF
  module Types
    # Where a link goes, by its `kind`. A newer server can add kinds: read one your client doesn't know as
    # `unsupported`.
    class PdfLinkTarget < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::PdfLinkTargetGoto }, key: "GOTO"

      member -> { CloudPDF::Types::PdfLinkTargetURI }, key: "URI"

      member -> { CloudPDF::Types::PdfLinkTargetGotoRemote }, key: "GOTO_REMOTE"

      member -> { CloudPDF::Types::PdfLinkTargetLaunch }, key: "LAUNCH"

      member -> { CloudPDF::Types::PdfLinkTargetJavascript }, key: "JAVASCRIPT"

      member -> { CloudPDF::Types::PdfLinkTargetNamed }, key: "NAMED"

      member -> { CloudPDF::Types::PdfLinkTargetUnsupported }, key: "UNSUPPORTED"
    end
  end
end
