require 'spec_helper'
# include CapybaraHelper

feature "localization" do
    scenario "verfies that text has been localized" do         # , js: true syntax requires phantomjs
        visit '/static_pages/home'

        expect(page).to have_content(I18n.t('welcome.welcomeheader'))   
        # expect(page).to have_content(I18n.t('welcome.welcomeheader'))
        # expect(page).to have_content(I18n.t('welcome.about'))
        # expect(page).to have_content(I18n.t('content.paragraph'))
    end
end
