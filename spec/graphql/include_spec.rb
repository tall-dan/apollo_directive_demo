# frozen_string_literal: true

require 'graphql/directives/include'

describe GraphQL::Directives::MySpecialInclude do
  describe '.locations' do
    let(:locations) { described_class.locations }

    it 'is available on a field' do
      expect(locations).to include GraphQL::Schema::Directive::FIELD
    end

    it 'is available on a fragment spread' do
      expect(locations).to include GraphQL::Schema::Directive::FRAGMENT_SPREAD
    end

    it 'is available on inline fragments' do
      expect(locations).to include GraphQL::Schema::Directive::INLINE_FRAGMENT
    end
  end

  describe '.include?' do
    context 'array checking' do
      it 'returns true if the element is included' do
        expect(described_class.include?(:_obj, { if_element: :wu, in_array: [:wu] }, :_ctx)).to be true
      end

      it 'returns false if the element is not included' do
        expect(described_class.include?(:_obj, { if_element: :tang, in_array: [:wu] }, :_ctx)).to be false
      end

      it 'returns false if the element is not included' do
        expect(described_class.include?(:_obj, { if_element: :tang, in_array: [:wu] }, :_ctx)).to be false
      end

      it 'returns false if given no array' do
        expect(described_class.include?(:_obj, { if_element: :tang }, :_ctx)).to be false
      end
    end
  end
end
