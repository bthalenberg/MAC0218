class PagesController < ApplicationController

  def landing_page
    @title = "Landing Page"
    @back = nil
    @next = [
      {
        name: 'About',
        action: 'about'
      },
      {
        name: 'Data',
        action: 'data'
      },
      {
        name: 'Analysis',
        action: 'analysis'
      },
      {
        name: 'Glossary',
        action: 'glossary'
      }
    ]
  end

  def about
    @title = "About"
    @back = 'landing_page'
    @next = [
      {
        name: 'Contact',
        action: 'contact'
      }
    ]
  end

  def contact
    @title = "Contact"
    @back = 'about'
    @next = []
  end

  def data
    @title = "Data"
    @back = 'landing_page'
    @next = []
  end

  def analysis
    @title = "Analysis"
    @back = 'landing_page'
    @next = []
  end

  def search
    @title = "Results page"
    @back = 'landing_page'
    @next = []
  end
  
  def glossary
    @title = "Glossary"
    @back = 'landing_page'
    @next = []
  end
end
