require 'spec_helper'
I18n.available_locales = [:en, :gr]

feature "localization" do
    I18n.available_locales.each do |locale|
    
        scenario "verfies that text has been localized" do         # , js: true syntax requires phantomjs
            visit '/static_pages/home'
    
            expect(page).to have_content(I18n.t('welcome.welcomeheader'))   
            expect(page).to have_content(I18n.t('welcome.welcomeheader'))
            expect(page).to have_content(I18n.t('welcome.about'))
            expect(page).to have_content(I18n.t('content.paragraph'))
        end
    
    end
end
