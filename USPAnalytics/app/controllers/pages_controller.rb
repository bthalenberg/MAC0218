class PagesController < ApplicationController

  def landing_page
  end

  def about
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
