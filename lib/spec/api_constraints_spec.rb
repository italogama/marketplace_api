require 'rails_helper'

describe ApiConstraints do
    let(:api_constraints_v1) { ApiConstraints.new(version: 1) }
    let(:api_constraints_v1) { ApiConstraints.new(version: 2) }

    describe 'matches?' do
        it "returns true when the version matches the 'Accept' header " do
            request = double(host: 'api.lhv.me', 
                            headers: { 'Accept': 'application/vnd.marketplace.v1'})
            api_constraints_v1.matches?(request).to be_truthy
        end
        it "returns the default version when 'default' option is specified" do
            request = double(host: 'api.lhv.me', 
                            headers: { 'Accept': 'application/vnd.marketplace.v1'})
            api_constraints_v2.matches?(request).to be_truthy
        end
    end
end