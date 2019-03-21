def sign_in_and_play(name1, name2)
  visit('/')
  fill_in('name1', with: name1)
  fill_in('name2', with: name2)
  click_button('OK')
end

def hadoken_and_continue
  click_button('HADOKEN!')
  click_link('Next turn')
end
