# frozen_string_literal: true

require 'scryfall'

RSpec.describe Scryfall::Cards do
  context 'search' do
    it 'returns a JSON response containing the search results' do
      VCR.use_cassette('successful search') do
<<<<<<< HEAD
        expect(Scryfall::Cards.search('c:c cmc=15')['data'].length).to eq(2)
=======
        expect(Scryfall::Cards.search(query: 'c:c cmc=15')['data'].length).to eq(2)
>>>>>>> efaa00bfd662bf62bd468c115598a4e4972a2f81
      end
    end
  end

  context 'named' do
    context 'fuzzy' do
      it 'returns a JSON response containing the data for the specified card' do
        VCR.use_cassette('successful fuzzy named') do
<<<<<<< HEAD
          expect(Scryfall::Cards.named('jac bel')['name']).to eq('Jace Beleren')
=======
          expect(Scryfall::Cards.named(query: 'jac bel')['name']).to eq('Jace Beleren')
>>>>>>> efaa00bfd662bf62bd468c115598a4e4972a2f81
        end
      end
    end

    context 'exact' do
      # test goes here
      it 'returns a JSON response containing the data for the specified card' do
        VCR.use_cassette('successful exact named') do
<<<<<<< HEAD
          expect(Scryfall::Cards.named('jace beleren', true)['name']).to eq('Jace Beleren')
=======
          expect(Scryfall::Cards.named(query: 'jace beleren', exact: true)['name']).to eq('Jace Beleren')
>>>>>>> efaa00bfd662bf62bd468c115598a4e4972a2f81
        end
      end
    end
  end
end
