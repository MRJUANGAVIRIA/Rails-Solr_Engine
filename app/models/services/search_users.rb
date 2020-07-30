class Services::SearchUsers
  attr_reader   :params

  def initialize(params)
    @params = params
  end

  def search
    return [] unless params[:name].present?
    results = User.search do
      fulltext params[:name] do
        fields(:name)
      end
    end
    results.present? ? results.results : []
  end
end
