feature 'Testing infrastructure' do
  before do
    @name1, @name2 = "Ken", "Ryu"
  end

  # As two Players,
  # So we can play a personalised game of Battle,
  # We want to start a fight by entering our names and seeing them
  scenario 'Two users can enter their names' do
    sign_in_and_play(@name1, @name2)
    expect(page).to have_content("#{@name1} vs. #{@name2}")
  end

  # As Player 1,
  # So I can see how close I am to winning
  # I want to see Player 2's Hit Points
  scenario "Player 1 can see Player 2's hit points" do
    sign_in_and_play(@name1, @name2)
    # this is what I came up with:
    # expect(page.find("#player-2-hp")).to have_content('60')
    # it works, but is that not a good feature test because it's referencing
    # the specific code? better to test the content rather than the specific
    # html?
    # here's what the walkthrough suggests:
    expect(page).to have_content "#{@name2}: 60HP"
  end
end
