class PagesController < ApplicationController

  def landing_page
  end

  def about
  end

  def contact
  end

  def data
    @data = Hash.new
    DespesaDetalhe.all.each do |despesa|
      parent = nil
      if despesa.parent == nil
        parent = despesa.grupo
      else
        parent = despesa.parent
      end
      @data[despesa.alinea] = [parent, despesa.proposta_orcamentaria]
      if not despesa.grupo == 'Pessoal e Reflexos'
        @data[despesa.grupo] = ['Todas', 0]
      end
    end
  end

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
  end

  def search
  end
  
  def glossary
  end
end
