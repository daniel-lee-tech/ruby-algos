require_relative '../../lib/semordnilap/semordnilap'

describe Semordnilap do
  context 'when empty array is passed' do
    it 'returns empty array' do
      result = described_class.new([]).solve
      expect(result).to eql([])
    end
  end

  context 'test 1' do
    it 'solves' do
      result = described_class.new(%w[abcde edcba edbc edb cbde abc]).solve
      expect(result).to eql([%w[abcde edcba], %w[edbc cbde]
                            ])
    end
  end

  context 'test 2' do
    it 'solves' do

      result = described_class.new(%w[liver dog hello desserts evil test god stressed racecar palindromes semordnilap abcd live]).solve
      expect(result).to eql([%w[dog god], %w[desserts stressed], %w[evil live], %w[palindromes semordnilap]
                            ])

    end
  end
end