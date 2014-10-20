require 'rails_helper'


feature "Managing Albums" do  # 'manage' is the CRUD

  scenario "A user can visit the index and see that blogs are or aren't there." do
    visit posts_path

    expect(page.find('h1')).to have_content(/Listing posts/)
    expect(page).to have_content("No Posts")
  end

end
















# scenario "List all Albums" do
#     Album.create(                    # GIVEN
#                                      title: 'Astrolounge',
#                                      artist: 'Smash Mouth',
#                                      year: '1999'
#                                      )

#     visit albums_path                 # WHEN

#     expect(page.find('.album')).to have_content(/Astrolounge/)    # THEN
#     expect(page.find('.artist')).to have_content(/Smash Mouth/)
#     expect(page.find('.year')).to have_content(/1999/)
#     expect(page).to have_no_content("No albums available")
#     # we are looking for classes so we have (.) instead of # for id. In our css we can then find them via our class names in the CSS.
#   end

#   scenario "Add new Album" do
#     Album.create(
#       title: 'Baby One More Time',
#       artist: 'Britney Spears',
#       year: '1999'
#     )

#     visit new_album_path

#     fill_in 'Title', with: 'Baby One More Time'
#     fill_in 'Artist', with: 'Britney Spears'
#     fill_in 'Year', with: '1999'
#     click_on 'Create Album'

#     expect(current_path).to eq(album_path(Album.last.id))
#     expect(find('.notice')).to have_content(/success/i)

#   end

#   scenario "Update an Album" do
#     album = create_baby_one_more_time
#     visit edit_album_path(album)

#     fill_in 'Title', with: 'Baby One More Time'
#     fill_in 'Artist', with: 'Britney Spears'
#     fill_in 'Year', with: '1999'
#     click_on 'Update Album'

#     expect(current_path).to eq(album_path(album))       #when we edit the page it takes right back to show page of the album
#     expect(find('.notice')).to have_content(/updated/i)

#   end

#   scenario "Show an Album" do
#     album = create_baby_one_more_time

#     visit albums_path(album)

#     expect(page.find('.album')).to have_content(/Baby One More Time/)
#     expect(page.find('.artist')).to have_content(/Britney Spears/)
#     expect(page.find('.year')).to have_content(/1999/)




#   end

#   scenario "Remove an Album" do
#     album = create_baby_one_more_time

#     visit album_path(album)

#     expect { click_on 'Destroy' }.to change(Album, :count).by(-1)
#   end
# end
