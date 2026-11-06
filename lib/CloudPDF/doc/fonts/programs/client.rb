# frozen_string_literal: true

module CloudPDF
  module Doc
    module Fonts
      module Programs
        class Client
          # @param client [CloudPDF::Internal::Http::RawClient]
          #
          # @return [void]
          def initialize(client:)
            @client = client
          end

          # A document token needs any one of the listed capabilities: one that may write text in the document. A file
          # the list says can't be downloaded (`canDownload: false`) is not found.
          #
          # @param request_options [Hash]
          # @param params [Hash]
          # @option request_options [String] :base_url
          # @option request_options [Hash{String => Object}] :additional_headers
          # @option request_options [Hash{String => Object}] :additional_query_parameters
          # @option request_options [Hash{String => Object}] :additional_body_parameters
          # @option request_options [Integer] :timeout_in_seconds
          # @option params [String] :doc_id
          # @option params [String] :layer_name
          # @option params [String] :display_sha256
          # @option params [String, nil] :document_password
          #
          # @example
          #   client.doc.fonts.programs.download(
          #     doc_id: "docId",
          #     layer_name: "layerName",
          #     display_sha256: "displaySha256"
          #   )
          #
          # @return [untyped]
          def download(request_options: {}, **params)
            params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
            headers = {}
            headers["X-Document-Password"] = params[:document_password] if params[:document_password]

            request = CloudPDF::Internal::JSON::Request.new(
              base_url: request_options[:base_url],
              method: "GET",
              path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/font-program-files/#{URI.encode_uri_component(params[:display_sha256].to_s)}",
              headers: headers,
              request_options: request_options
            )
            begin
              response = @client.send(request)
            rescue Net::HTTPRequestTimeout
              raise CloudPDF::Errors::TimeoutError
            end
            code = response.code.to_i
            return if code.between?(200, 299)

            error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end

          # @param request_options [Hash]
          # @param params [Hash]
          # @option request_options [String] :base_url
          # @option request_options [Hash{String => Object}] :additional_headers
          # @option request_options [Hash{String => Object}] :additional_query_parameters
          # @option request_options [Hash{String => Object}] :additional_body_parameters
          # @option request_options [Integer] :timeout_in_seconds
          # @option params [String] :doc_id
          # @option params [String] :layer_name
          # @option params [String] :display_sha256
          # @option params [String, nil] :document_password
          #
          # @example
          #   client.doc.fonts.programs.get(
          #     doc_id: "docId",
          #     layer_name: "layerName",
          #     display_sha256: "displaySha256"
          #   )
          #
          # @return [CloudPDF::Types::FontProgramInfo]
          def get(request_options: {}, **params)
            params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
            headers = {}
            headers["X-Document-Password"] = params[:document_password] if params[:document_password]

            request = CloudPDF::Internal::JSON::Request.new(
              base_url: request_options[:base_url],
              method: "GET",
              path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/font-programs/#{URI.encode_uri_component(params[:display_sha256].to_s)}",
              headers: headers,
              request_options: request_options
            )
            begin
              response = @client.send(request)
            rescue Net::HTTPRequestTimeout
              raise CloudPDF::Errors::TimeoutError
            end
            code = response.code.to_i
            if code.between?(200, 299)
              (response.body.to_s.empty? ? nil : CloudPDF::Types::DocFontsProgramsGetResponse.load(response.body))
            else
              error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
              raise error_class.new(response.body, code: code)
            end
          end
        end
      end
    end
  end
end
