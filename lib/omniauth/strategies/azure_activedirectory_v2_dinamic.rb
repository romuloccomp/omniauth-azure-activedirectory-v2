require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Dinamic < AzureActivedirectoryV2
      BASE_AZURE_URL = 'https://login.microsoftonline.com'

      option :name, 'dinamic'
      option :tenant_provider, nil

      DEFAULT_SCOPE = 'openid profile email'

      # tenant_provider must return client_id, client_secret and optionally tenant_id and base_azure_url
      args [:tenant_provider]

    end
  end
end