require 'spec_helper'

RSpec.describe Phraser do
  let!(:prefix) { 'prefix' }
  let!(:postfix) { 'postfix' }
  let!(:separator) { '**|**' }

  let!(:proc_prefix) { proc { 'prefix' } }
  let!(:proc_postfix) { proc { 'postfix' } }

  context 'with .generate' do
    it { expect(Phraser.generate).to be_kind_of Array }
    it { expect(Phraser.generate(prefix: prefix)[0]).to eq prefix }
    it { expect(Phraser.generate(postfix: postfix)[-1]).to eq postfix }

    it { puts Phraser.generate(prefix: proc_prefix).inspect }
    it { expect(Phraser.generate(prefix: proc_prefix)[0]).to eq proc_prefix.call }
    it { expect(Phraser.generate(postfix: proc_postfix)[-1]).to eq proc_postfix.call }
  end

  context 'with .generate_string' do
    it { expect(Phraser.generate_string).to be_kind_of String }
    it { expect(Phraser.generate_string(prefix: prefix) =~ /^#{prefix}/).not_to be_nil }
    it { expect(Phraser.generate_string(postfix: postfix) =~ /#{postfix}$/).not_to be_nil }

    it { expect(Phraser.generate_string(prefix: proc_prefix) =~ /^#{proc_prefix.call}/).not_to be_nil }
    it { expect(Phraser.generate_string(postfix: proc_postfix) =~ /#{proc_postfix.call}$/).not_to be_nil }
  end
end
