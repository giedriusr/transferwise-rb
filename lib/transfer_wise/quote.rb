module TransferWise
  class Quote < APIResource
    def self.account_requirements(resource_id, headers = {})
      response = TransferWise::Request.request(:get, account_requirements_url(resource_id), {}, headers)
      convert_to_transfer_wise_object(response)
    end

    def self.account_requirements_url(resource_id)
      "#{collection_url}/#{resource_id}/account-requirements"
    end
  end
end
