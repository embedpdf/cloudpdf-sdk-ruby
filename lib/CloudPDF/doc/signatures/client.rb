# frozen_string_literal: true

module CloudPDF
  module Doc
    module Signatures
      class Client
        # @param client [CloudPDF::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Describes the bytes the layer is over: the base version's signatures plus the layer's own edits as the last
        # revision. Signed bytes (contents, digests, revision prefixes) are served per base version under /versions.
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
        # @option params [String, nil] :document_password
        #
        # @example
        #   client.doc.signatures.list(
        #     doc_id: "docId",
        #     layer_name: "layerName"
        #   )
        #
        # @return [CloudPDF::Types::DocSignaturesList200Response]
        def list(request_options: {}, **params)
          params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
          headers = {}
          headers["X-Document-Password"] = params[:document_password] if params[:document_password]

          request = CloudPDF::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/signatures",
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
            CloudPDF::Types::DocSignaturesList200Response.load(response.body)
          else
            error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
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
        # @option params [String] :signing_id
        # @option params [String, nil] :document_password
        #
        # @example
        #   client.doc.signatures.abort(
        #     doc_id: "docId",
        #     layer_name: "layerName",
        #     signing_id: "signingId"
        #   )
        #
        # @return [CloudPDF::Types::DocSignaturesAbort200Response]
        def abort(request_options: {}, **params)
          params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
          headers = {}
          headers["X-Document-Password"] = params[:document_password] if params[:document_password]

          request = CloudPDF::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "DELETE",
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/signatures/#{URI.encode_uri_component(params[:signing_id].to_s)}",
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
            CloudPDF::Types::DocSignaturesAbort200Response.load(response.body)
          else
            error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # `cms` is the detached CMS over the prepared digest, base64. `expectedVersion` must be what prepare returned.
        # Idempotent by signing id: the same CMS again answers `already-completed`. Every layer of the document then
        # sits over the new version; refetch the manifest after a completion.
        #
        # @param request_options [Hash]
        # @param params [CloudPDF::Doc::Signatures::Types::DocSignaturesCompleteRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :doc_id
        # @option params [String] :layer_name
        # @option params [String] :signing_id
        # @option params [String, nil] :document_password
        #
        # @example
        #   client.doc.signatures.complete(
        #     doc_id: "docId",
        #     layer_name: "layerName",
        #     signing_id: "signingId",
        #     cms: "cms",
        #     expected_version: {
        #       base_sha256: "baseSha256",
        #       edits_version: 1
        #     }
        #   )
        #
        # @return [CloudPDF::Types::DocSignaturesComplete200Response]
        def complete(request_options: {}, **params)
          params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
          request_data = CloudPDF::Doc::Signatures::Types::DocSignaturesCompleteRequest.new(params).to_h
          non_body_param_names = %w[docId layerName signingId X-Document-Password]
          body = request_data.except(*non_body_param_names)

          headers = {}
          headers["X-Document-Password"] = params[:document_password] if params[:document_password]

          request = CloudPDF::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/signatures/#{URI.encode_uri_component(params[:signing_id].to_s)}/complete",
            headers: headers,
            body: body,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise CloudPDF::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            CloudPDF::Types::DocSignaturesComplete200Response.load(response.body)
          else
            error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Exactly one of `since.signature=<index>` or `since.revision=<index>`; the layer's pending edits are the end.
        # `level=fill|annotate|lta|none` evaluates exploratorily and never becomes a verdict. For history between two
        # base revisions use the version analysis.
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
        # @option params [Integer, nil] :since_signature
        # @option params [Integer, nil] :since_revision
        # @option params [CloudPDF::Doc::Signatures::Types::AnalysisSignaturesRequestLevel, nil] :level
        # @option params [String, nil] :document_password
        #
        # @example
        #   client.doc.signatures.analysis(
        #     doc_id: "docId",
        #     layer_name: "layerName"
        #   )
        #
        # @return [CloudPDF::Types::DocSignaturesAnalysis200Response]
        def analysis(request_options: {}, **params)
          params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
          query_params = {}
          query_params["since.signature"] = params[:since_signature] if params.key?(:since_signature)
          query_params["since.revision"] = params[:since_revision] if params.key?(:since_revision)
          query_params["level"] = params[:level] if params.key?(:level)

          headers = {}
          headers["X-Document-Password"] = params[:document_password] if params[:document_password]

          request = CloudPDF::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/signatures/analysis",
            headers: headers,
            query: query_params,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise CloudPDF::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            CloudPDF::Types::DocSignaturesAnalysis200Response.load(response.body)
          else
            error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # The multipart envelope: a JSON `body` part (field, subFilter, digest, contentsSize, signer, certify, lock,
        # appearance) and an optional `resource:<key>` PDF part the body's `appearance.resource` names. A certification
        # (`certify.permission`) additionally requires `doc.sign.certify`. The layer is read-only until the signing
        # completes, is aborted, or expires (15 minutes). A layer behind the document head cannot sign (StaleBase).
        #
        # @param request_options [Hash]
        # @param params [void]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :doc_id
        # @option params [String] :layer_name
        # @option params [String, nil] :document_password
        #
        # @example
        #   client.doc.signatures.prepare(
        #     doc_id: "docId",
        #     layer_name: "layerName"
        #   )
        #
        # @return [CloudPDF::Types::DocSignaturesPrepare200Response]
        def prepare(request_options: {}, **params)
          params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
          body = Internal::Multipart::FormData.new

          body.add_part(params[:file].to_form_data_part(name: "file")) if params[:file]

          request = CloudPDF::Internal::Multipart::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/signatures/prepare",
            body: body,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise CloudPDF::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            CloudPDF::Types::DocSignaturesPrepare200Response.load(response.body)
          else
            error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
