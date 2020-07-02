require 'rails_helper'

describe 'navigate' do
  before do
    @recipe = Recipe.create(name: "My Post")
  end

  it 'loads the show page' do
    visit "/recipe/#{@recipe.id}"
    expect(page.status_code).to eq(200)
  end

  it 'shows the title on the show page in an h1 tag' do
    visit "/recipe/#{@recipe.id}"
    expect(page).to have_css("h1", text: "124")
  end
end
