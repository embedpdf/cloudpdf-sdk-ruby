# frozen_string_literal: true

module CloudPDF
  module Doc
    module Forms
      class Client
        # @param client [CloudPDF::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
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
        # @option params [String, nil] :document_password
        #
        # @example
        #   client.doc.forms.list(
        #     doc_id: "docId",
        #     layer_name: "layerName"
        #   )
        #
        # @return [CloudPDF::Types::DocFormsList200Response]
        def list(request_options: {}, **params)
          params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
          headers = {}
          headers["X-Document-Password"] = params[:document_password] if params[:document_password]

          request = CloudPDF::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/form",
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
            (response.body.to_s.empty? ? nil : CloudPDF::Types::DocFormsList200Response.load(response.body))
          else
            error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # @param request_options [Hash]
        # @param params [CloudPDF::Doc::Forms::Types::DocFormsReorderCalculationsRequest]
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
        #   client.doc.forms.reorder_calculations(
        #     doc_id: "docId",
        #     layer_name: "layerName",
        #     fields: [],
        #     position: "start"
        #   )
        #
        # @return [CloudPDF::Types::DocFormsReorderCalculations200Response]
        def reorder_calculations(request_options: {}, **params)
          params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
          request_data = CloudPDF::Doc::Forms::Types::DocFormsReorderCalculationsRequest.new(params).to_h
          non_body_param_names = %w[docId layerName X-Document-Password Idempotency-Key]
          body = request_data.except(*non_body_param_names)

          headers = {}
          headers["X-Document-Password"] = params[:document_password] if params[:document_password]
          headers["Idempotency-Key"] = params[:idempotency_key] if params[:idempotency_key]

          request = CloudPDF::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/form/calculations/reorder",
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
            (response.body.to_s.empty? ? nil : CloudPDF::Types::DocFormsReorderCalculations200Response.load(response.body))
          else
            error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # @param request_options [Hash]
        # @param params [CloudPDF::Types::DocFormsSetValueRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :doc_id
        # @option params [String] :layer_name
        # @option params [String] :field_key
        # @option params [String, nil] :document_password
        # @option params [String, nil] :idempotency_key
        #
        # @example
        #   client.doc.forms.set_value(
        #     doc_id: "docId",
        #     layer_name: "layerName",
        #     field_key: "fieldKey",
        #     request: {
        #       key: "value"
        #     }
        #   )
        #
        # @return [CloudPDF::Types::DocFormsSetValue200Response]
        def set_value(request_options: {}, **params)
          params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
          path_param_names = %i[doc_id layer_name field_key]
          body_params = params.except(*path_param_names)

          headers = {}
          headers["X-Document-Password"] = params[:document_password] if params[:document_password]
          headers["Idempotency-Key"] = params[:idempotency_key] if params[:idempotency_key]

          request = CloudPDF::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/form/fields/#{URI.encode_uri_component(params[:field_key].to_s)}/value",
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
            (response.body.to_s.empty? ? nil : CloudPDF::Types::DocFormsSetValue200Response.load(response.body))
          else
            error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # @param request_options [Hash]
        # @param params [CloudPDF::Doc::Forms::Types::DocFormsResetRequest]
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
        #   client.doc.forms.reset(
        #     doc_id: "docId",
        #     layer_name: "layerName"
        #   )
        #
        # @return [CloudPDF::Types::DocFormsReset200Response]
        def reset(request_options: {}, **params)
          params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
          request_data = CloudPDF::Doc::Forms::Types::DocFormsResetRequest.new(params).to_h
          non_body_param_names = %w[docId layerName X-Document-Password Idempotency-Key]
          body = request_data.except(*non_body_param_names)

          headers = {}
          headers["X-Document-Password"] = params[:document_password] if params[:document_password]
          headers["Idempotency-Key"] = params[:idempotency_key] if params[:idempotency_key]

          request = CloudPDF::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/form/reset",
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
            (response.body.to_s.empty? ? nil : CloudPDF::Types::DocFormsReset200Response.load(response.body))
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
        # @option params [String] :annot_key
        # @option params [String, nil] :document_password
        # @option params [String, nil] :idempotency_key
        #
        # @example
        #   client.doc.forms.delete_widget(
        #     doc_id: "docId",
        #     layer_name: "layerName",
        #     page_key: "pageKey",
        #     annot_key: "annotKey"
        #   )
        #
        # @return [CloudPDF::Types::DocFormsDeleteWidget200Response]
        def delete_widget(request_options: {}, **params)
          params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
          headers = {}
          headers["X-Document-Password"] = params[:document_password] if params[:document_password]
          headers["Idempotency-Key"] = params[:idempotency_key] if params[:idempotency_key]

          request = CloudPDF::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "DELETE",
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/form/widgets/#{URI.encode_uri_component(params[:page_key].to_s)}/#{URI.encode_uri_component(params[:annot_key].to_s)}",
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
            (response.body.to_s.empty? ? nil : CloudPDF::Types::DocFormsDeleteWidget200Response.load(response.body))
          else
            error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # @param request_options [Hash]
        # @param params [CloudPDF::Doc::Forms::Types::DocFormsUpdateWidgetRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :doc_id
        # @option params [String] :layer_name
        # @option params [String] :page_key
        # @option params [String] :annot_key
        # @option params [String, nil] :document_password
        # @option params [String, nil] :idempotency_key
        #
        # @example
        #   client.doc.forms.update_widget(
        #     doc_id: "docId",
        #     layer_name: "layerName",
        #     page_key: "pageKey",
        #     annot_key: "annotKey",
        #     patch: {}
        #   )
        #
        # @return [CloudPDF::Types::DocFormsUpdateWidget200Response]
        def update_widget(request_options: {}, **params)
          params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
          request_data = CloudPDF::Doc::Forms::Types::DocFormsUpdateWidgetRequest.new(params).to_h
          non_body_param_names = %w[docId layerName pageKey annotKey X-Document-Password Idempotency-Key]
          body = request_data.except(*non_body_param_names)

          headers = {}
          headers["X-Document-Password"] = params[:document_password] if params[:document_password]
          headers["Idempotency-Key"] = params[:idempotency_key] if params[:idempotency_key]

          request = CloudPDF::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "PATCH",
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/form/widgets/#{URI.encode_uri_component(params[:page_key].to_s)}/#{URI.encode_uri_component(params[:annot_key].to_s)}",
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
            (response.body.to_s.empty? ? nil : CloudPDF::Types::DocFormsUpdateWidget200Response.load(response.body))
          else
            error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # @param request_options [Hash]
        # @param params [CloudPDF::Doc::Forms::Types::DocFormsReorderWidgetsRequest]
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
        #   client.doc.forms.reorder_widgets(
        #     doc_id: "docId",
        #     layer_name: "layerName",
        #     page_key: "pageKey",
        #     widgets: [],
        #     position: "start"
        #   )
        #
        # @return [CloudPDF::Types::DocFormsReorderWidgets200Response]
        def reorder_widgets(request_options: {}, **params)
          params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
          request_data = CloudPDF::Doc::Forms::Types::DocFormsReorderWidgetsRequest.new(params).to_h
          non_body_param_names = %w[docId layerName pageKey X-Document-Password Idempotency-Key]
          body = request_data.except(*non_body_param_names)

          headers = {}
          headers["X-Document-Password"] = params[:document_password] if params[:document_password]
          headers["Idempotency-Key"] = params[:idempotency_key] if params[:idempotency_key]

          request = CloudPDF::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/form/widgets/#{URI.encode_uri_component(params[:page_key].to_s)}/reorder",
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
            (response.body.to_s.empty? ? nil : CloudPDF::Types::DocFormsReorderWidgets200Response.load(response.body))
          else
            error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
