require 'rails_helper'

describe Question do
  it 'is private by default' do
    question = FactoryBot.create(:question)
    question.title.should eq 'geography'
  end
  it 'tests another question title with factory bot' do
    question = FactoryBot.create(:question, :title => "Herd the cats")
    question.title.should eq "Herd the cats"
  end
end
