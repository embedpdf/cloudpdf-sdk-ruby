# frozen_string_literal: true

module CloudPDF
  module Doc
    module Pages
      class Client
        # @param client [CloudPDF::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # @param request_options [Hash]
        # @param params [CloudPDF::Doc::Pages::Types::DocPagesSetScaleRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :doc_id
        # @option params [String] :layer_name
        # @option params [String] :page_key
        # @option params [String, nil] :document_password
        # @option params [String, nil] :idempotency_key
        #
        # @example
        #   client.doc.pages.set_scale(
        #     doc_id: "docId",
        #     layer_name: "layerName",
        #     page_key: "pageKey"
        #   )
        #
        # @return [CloudPDF::Types::DocPagesSetScale200Response]
        def set_scale(request_options: {}, **params)
          params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
          request_data = CloudPDF::Doc::Pages::Types::DocPagesSetScaleRequest.new(params).to_h
          non_body_param_names = %w[docId layerName pageKey X-Document-Password Idempotency-Key]
          body = request_data.except(*non_body_param_names)

          headers = {}
          headers["X-Document-Password"] = params[:document_password] if params[:document_password]
          headers["Idempotency-Key"] = params[:idempotency_key] if params[:idempotency_key]

          request = CloudPDF::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "PUT",
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/pages/#{URI.encode_uri_component(params[:page_key].to_s)}/scale",
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
            (response.body.to_s.empty? ? nil : CloudPDF::Types::DocPagesSetScale200Response.load(response.body))
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
        # @option params [String] :page_key
        # @option params [String, nil] :document_password
        #
        # @example
        #   client.doc.pages.viewports(
        #     doc_id: "docId",
        #     layer_name: "layerName",
        #     page_key: "pageKey"
        #   )
        #
        # @return [CloudPDF::Types::DocPagesViewports200Response]
        def viewports(request_options: {}, **params)
          params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
          headers = {}
          headers["X-Document-Password"] = params[:document_password] if params[:document_password]

          request = CloudPDF::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/pages/#{URI.encode_uri_component(params[:page_key].to_s)}/viewports",
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
            (response.body.to_s.empty? ? nil : CloudPDF::Types::DocPagesViewports200Response.load(response.body))
          else
            error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # A read, not a mutation: the source document is untouched and no event is published. Body is `{"pages":
        # PageRef[], "flatten"?: {"usage"?: "display" | "print"}, "includeAnnotations"?: boolean, "includeFormFields"?:
        # boolean}`; the response body is the new PDF. With `flatten` the copy is the pages as they draw for `usage`
        # (`"print"`: a print copy): the annotations and form fields painted in, nothing interactive left, layers in
        # their state for the usage. A flattened copy takes `doc.download` or `doc.download.flattened`, and paints only
        # what the caller may read; `includeAnnotations` and `includeFormFields` choose what it paints, and are refused
        # without `flatten`.
        #
        # @param request_options [Hash]
        # @param params [CloudPDF::Types::DocPagesExtractRequest]
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
        #   client.doc.pages.extract(
        #     doc_id: "docId",
        #     layer_name: "layerName",
        #     request: {
        #       string: {
        #         key: "value"
        #       }
        #     }
        #   )
        #
        # @return [untyped]
        def extract(request_options: {}, **params)
          params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
          path_param_names = %i[doc_id layer_name]
          body_params = params.except(*path_param_names)

          headers = {}
          headers["X-Document-Password"] = params[:document_password] if params[:document_password]

          request = CloudPDF::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/pages/extract",
            headers: headers,
            body: body_params,
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
        # @param params [CloudPDF::Types::DocPagesFlattenRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :doc_id
        # @option params [String] :layer_name
        # @option params [String, nil] :document_password
        # @option params [String, nil] :idempotency_key
        #
        # @example
        #   client.doc.pages.flatten(
        #     doc_id: "docId",
        #     layer_name: "layerName",
        #     request: {
        #       key: "value"
        #     }
        #   )
        #
        # @return [CloudPDF::Types::DocPagesFlatten200Response]
        def flatten(request_options: {}, **params)
          params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
          path_param_names = %i[doc_id layer_name]
          body_params = params.except(*path_param_names)

          headers = {}
          headers["X-Document-Password"] = params[:document_password] if params[:document_password]
          headers["Idempotency-Key"] = params[:idempotency_key] if params[:idempotency_key]

          request = CloudPDF::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/pages/flatten",
            headers: headers,
            body: body_params,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise CloudPDF::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            (response.body.to_s.empty? ? nil : CloudPDF::Types::DocPagesFlatten200Response.load(response.body))
          else
            error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # @param request_options [Hash]
        # @param params [CloudPDF::Types::DocPagesSetNameRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :doc_id
        # @option params [String] :layer_name
        # @option params [String, nil] :document_password
        # @option params [String, nil] :idempotency_key
        #
        # @example
        #   client.doc.pages.set_name(
        #     doc_id: "docId",
        #     layer_name: "layerName",
        #     request: {
        #       key: "value"
        #     }
        #   )
        #
        # @return [CloudPDF::Types::DocPagesSetName200Response]
        def set_name(request_options: {}, **params)
          params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
          path_param_names = %i[doc_id layer_name]
          body_params = params.except(*path_param_names)

          headers = {}
          headers["X-Document-Password"] = params[:document_password] if params[:document_password]
          headers["Idempotency-Key"] = params[:idempotency_key] if params[:idempotency_key]

          request = CloudPDF::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/pages/names",
            headers: headers,
            body: body_params,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise CloudPDF::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            (response.body.to_s.empty? ? nil : CloudPDF::Types::DocPagesSetName200Response.load(response.body))
          else
            error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # @param request_options [Hash]
        # @param params [CloudPDF::Types::DocPagesRemoveNameRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :doc_id
        # @option params [String] :layer_name
        # @option params [String, nil] :document_password
        # @option params [String, nil] :idempotency_key
        #
        # @example
        #   client.doc.pages.remove_name(
        #     doc_id: "docId",
        #     layer_name: "layerName",
        #     request: {
        #       key: "value"
        #     }
        #   )
        #
        # @return [CloudPDF::Types::DocPagesRemoveName200Response]
        def remove_name(request_options: {}, **params)
          params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
          path_param_names = %i[doc_id layer_name]
          body_params = params.except(*path_param_names)

          headers = {}
          headers["X-Document-Password"] = params[:document_password] if params[:document_password]
          headers["Idempotency-Key"] = params[:idempotency_key] if params[:idempotency_key]

          request = CloudPDF::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/pages/names/delete",
            headers: headers,
            body: body_params,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise CloudPDF::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            (response.body.to_s.empty? ? nil : CloudPDF::Types::DocPagesRemoveName200Response.load(response.body))
          else
            error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
