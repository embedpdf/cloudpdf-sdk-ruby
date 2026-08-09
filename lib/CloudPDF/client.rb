# frozen_string_literal: true

module CloudPDF
  class Client
    # @param token [String]
    # @param base_url [String, nil]
    # @param max_retries [Integer]
    #
    # @return [void]
    def initialize(token:, base_url: nil, max_retries: 2)
      @raw_client = CloudPDF::Internal::Http::RawClient.new(
        base_url: base_url,
        headers: {
          "X-Fern-Language" => "Ruby",
          Authorization: "Bearer #{token}"
        },
        max_retries: max_retries
      )
    end

    # @return [CloudPDF::Deployment::Client]
    def deployment
      @deployment ||= CloudPDF::Deployment::Client.new(client: @raw_client)
    end

    # @return [CloudPDF::Doc::Client]
    def doc
      @doc ||= CloudPDF::Doc::Client.new(client: @raw_client)
    end

    # @return [CloudPDF::Tenants::Client]
    def tenants
      @tenants ||= CloudPDF::Tenants::Client.new(client: @raw_client)
    end

    # @return [CloudPDF::Documents::Client]
    def documents
      @documents ||= CloudPDF::Documents::Client.new(client: @raw_client)
    end

    # @return [CloudPDF::Tokens::Client]
    def tokens
      @tokens ||= CloudPDF::Tokens::Client.new(client: @raw_client)
    end
  end
end
