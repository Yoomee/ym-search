include ActionView::Helpers::SanitizeHelper

module YmSearch::SearchesController
    
  def show
    @query = strip_tags(params[:q]).to_s.strip
    if @query.present?
      @results = ThinkingSphinx.search(@query,:page => params[:page], :per_page => 20)
    else
      @results = []
    end
  end

end