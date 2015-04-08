require 'spec_helper'

describe Spotlight::BlacklightConfigurationsHelper, type: :helper do
  describe '#translate_sort_fields' do
    let(:sort_config) do
      Blacklight::OpenStructWithHashAccess.new(sort: 'score asc, sort_title_ssi desc')
    end
    it 'translates sort fields' do
      expect(translate_sort_fields(sort_config)).to eq 'relevancy score ascending and title descending'
    end
  end
end
