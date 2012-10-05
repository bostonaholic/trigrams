require 'trigram_generator'
require 'rspec'

describe TrigramGenerator do
  context 'generating a single sentence' do
    it 'generates a single sentence from trigram patterns' do
      patterns = {'I wish' => ['I', 'I'],
                  'wish I' => ['may', 'might'],
                  'may I'  => ['wish'],
                  'I may'  => ['I']}
      # "I might" is the only pattern which will kill the cycle
      TrigramGenerator.generate_sentence(patterns).last_two_words.should be == 'I might'
    end

    it 'capitalizes the first word' do
      patterns = {'wish I' => ['may', 'might']}
      TrigramGenerator.generate_sentence(patterns).word(1).should be == 'Wish'
    end

    it 'adds a period' do
      patterns = {'wish I' => ['might']}
      TrigramGenerator.generate_sentence(patterns).slice(-1,1).should be == '.'
    end
  end

  context 'generating a paragraph' do
    patterns = {'wish I' => ['might']}

    it 'generates one sentence by default' do
      TrigramGenerator.generate_paragraph(patterns).should be == 'Wish I might.'
    end

    it 'generates multiple sentences' do
      TrigramGenerator.generate_paragraph(patterns, 3).should be == 'Wish I might. Wish I might. Wish I might.'
    end
  end

  context 'generating multiple paragraphs' do
    patterns = {'wish I' => ['might']}

    it 'generates one paragraph with one sentence by default' do
      TrigramGenerator.generate_text(patterns).should be == 'Wish I might.'
    end

    it 'generates n paragraphs with 1 sentence' do
      TrigramGenerator.generate_text(patterns, 2).should be == "Wish I might.

Wish I might."
    end

    it 'generates n paragraphs with m sentences' do
      TrigramGenerator.generate_text(patterns, 3, 4).should be == "Wish I might. Wish I might. Wish I might. Wish I might.

Wish I might. Wish I might. Wish I might. Wish I might.

Wish I might. Wish I might. Wish I might. Wish I might."
    end
  end
end
