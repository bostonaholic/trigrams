require 'rspec'
require 'trigram_analyzer'

describe TrigramAnalyzer do
  context 'analyzing a single sentence' do
    it 'fills a table with three words' do
      TrigramAnalyzer.analyze_sentence('I wish I').should == {'I wish' => ['I']}
    end

    it 'fills a table with multiple keys' do
      TrigramAnalyzer.analyze_sentence('I wish I may').should ==
        {'I wish' => ['I'],
         'wish I' => ['may']}
    end

    it 'fills a table with multiple keys and values' do
      TrigramAnalyzer.analyze_sentence('I wish I may I wish I might').should ==
        {'I wish' => ['I', 'I'],
         'wish I' => ['may', 'might'],
         'may I'  => ['wish'],
         'I may'  => ['I']}
    end

    it 'fills a table of existing patterns' do
      patterns = {'cat dog' => ['hamster']}
      TrigramAnalyzer.analyze_sentence('I wish I may I wish I might', patterns).should ==
        {'cat dog' => ['hamster'],
         'I wish' => ['I', 'I'],
         'wish I' => ['may', 'might'],
         'may I'  => ['wish'],
         'I may'  => ['I']}
    end
  end

  context 'analyzing a single paragraph' do
    it 'fills a table of patterns with keys from multiple sentences' do
      TrigramAnalyzer.analyze_text('I wish I may. I wish I might.').should ==
        {'I wish' => ['I', 'I'],
         'wish I' => ['may', 'might']}
    end

    it 'fills a table of existing patterns' do
      patterns = {'I wish' => ['I'],
                  'wish I' => ['may']}
      TrigramAnalyzer.analyze_text('I wish I might. We does it right.', patterns).should ==
        {'I wish'  => ['I', 'I'],
         'wish I'  => ['may', 'might'],
         'We does' => ['it'],
         'does it' => ['right']}
    end
  end

  context 'analyzing multiple paragraphs' do
    it 'fills patterns' do
      text = 'I wish I may. I wish I might.

      We does it right.'
      TrigramAnalyzer.analyze_text(text).should be ==
      {'I wish'  => ['I', 'I'],
       'wish I'  => ['may', 'might'],
       'We does' => ['it'],
       'does it' => ['right']}
    end

    it 'fills a table of existing patterns' do
      patterns = {'I wish' => ['I', 'I'],
                  'wish I' => ['may', 'might']}

      text = 'We does it right. And again right.

      And another paragraph.'
      TrigramAnalyzer.analyze_text(text, patterns).should ==
      {'I wish'      => ['I', 'I'],
       'wish I'      => ['may', 'might'],
       'We does'     => ['it'],
       'does it'     => ['right'],
       'And again'   => ['right'],
       'And another' => ['paragraph']}
    end
  end
end

