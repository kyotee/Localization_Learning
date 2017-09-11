require 'spec_helper'
# include CapybaraHelper

feature "localization" do
    # scenario "verfies that text has been localized", js: true do
    scenario "verfies that text has been localized" do
        # visit static_pages_home
        expect(page).to have_content("welcome!")
        
        # expect(page).to have_content('Signed in successfully.') 
        
        # expect(page).to have_content(I18n.t('welcome.welcomeheader'))
        # expect(page).to have_content(I18n.t('welcome.about'))
        # expect(page).to have_content(I18n.t('content.paragraph'))
    end
end
