require 'spec_helper'

RSpec.describe Phraser do
  let!(:prefix){ 'prefix' }
  let!(:postfix){ 'postfix' }
  let!(:separator){ '**|**' }

  context 'with .generate' do
    it { expect(Phraser.generate).to be_kind_of Array }
    it { expect(Phraser.generate[0]).to eq prefix }
    it { expect(Phraser.generate[-1]).to eq postfix }
  end

  context 'with .generate_string' do
    it { expect(Phraser.generate).to be_kind_of String }
    it { expect(Phraser.generate(prefix: prefix) =~ /^#{prefix}/).not_to be_nil }
    it { expect(Phraser.generate(postfix: postfix) =~ /#{postfix}$/).not_to be_nil }
  end
end
