require 'scryfall'

RSpec.describe Scryfall::Cards, "search" do
    context "with valid search terms" do
        it "returns a JSON response containing the search results" do
            VCR.use_cassette('successful search') do
                expect(described_class.search("c:c cmc=15")["data"].length).to eq(2)
            end
        end
    end
end