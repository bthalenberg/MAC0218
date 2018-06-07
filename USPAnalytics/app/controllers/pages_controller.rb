class PagesController < ApplicationController

  def landing_page
  end

  def about
  end

  def contact
  end

<<<<<<< HEAD
  def browse
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
=======
  def data
>>>>>>> master
  end

  def analysis
  end

  def search
  end
  
  def glossary
  end
end
