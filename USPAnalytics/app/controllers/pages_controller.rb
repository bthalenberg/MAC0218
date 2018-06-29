class PagesController < ApplicationController

  def landing_page
  end

  def about
  end

  def contact
  end

  def data
    @json = build_graph("Orçamento").to_json
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

  private
  def build_graph node
    h = Hash.new
    attrs = get_attrs node
    h['name'] = attrs[0]
    children = get_children(node)
    if children.empty?
      h['size'] = attrs[1]
    else
      h['children'] = []
      children.each do |c|
        h['children'] << build_graph(c)
      end
    end
    h
  end

  def get_attrs node
    l = DespesaDetalhe.where(alinea: node).first
    [l[:alinea].sub(/\(.*\)/, "").strip, l[:proposta_orcamentaria]]
  end

  def get_children node
    DespesaDetalhe.where(parent: node).pluck(:alinea)
  end
end
