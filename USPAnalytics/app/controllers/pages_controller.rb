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
        name: 'Browse by topic',
        action: 'browse_topic'
      },
      {
        name: 'Search',
        action: 'search'
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

  def browse_institute
    @title = "Browse by Institute"
    @back = 'browse_topic'
    @next = [
      {
        name: 'Raw data',
        action: 'browse_institute_raw_data'
      },
      {
        name: 'Analysis',
        action: 'browse_institute_analysis'
      }
    ]
  end

  def browse_institute_analysis
    @title = "Browse analysis"
    @back = 'browse_institute'
    @next = []
  end

  def browse_institute_raw_data
    @title = "Browse analysis"
    @back = 'browse_institute'
    @next = []
  end

  def browse_topic
    @title = "Browse by topic"
    @back = 'landing_page'
    @next = [
      {
        name: 'Anual data',
        action: 'browse_topic_annual_data'
      },
      {
        name: 'By institute',
        action: 'browse_institute'
      }
    ]
  end

  def browse_topic_analysis
    @title = "Topic analysis"
    @back = 'browse_topic_annual_data'
    @next = []
  end

  def browse_topic_annual_data
    @title = "Topic annual data"
    @back = 'browse_topic'
    @next = [
      {
        name: 'Raw data',
        action: 'browse_topic_raw_data'
      },
      {
        name: 'Analysis',
        action: 'browse_topic_analysis'
      }
    ]
  end

  def browse_topic_raw_data
    @title = "Topic raw data"
    @back = 'browse_topic_annual_data'
    @next = []
  end

  def search
    @title = "Search"
    @back = 'landing_page'
    @next = [
      {
        name: 'Results page',
        action: 'search_results'
      }
    ]
  end

  def search_analysis
    @title = "Search analysis"
    @back = 'search_results'
    @next = []
  end

  def search_results
    @title = "Results page"
    @back = 'search'
    @next = [
      {
        name: 'Raw data',
        action: 'search_raw_data'
      },
      {
        name: 'Analysis',
        action: 'search_analysis'
      }
    ]
  end

  def search_raw_data
    @title = "Search raw data"
    @back = 'search_results'
    @next = []
  end

end
