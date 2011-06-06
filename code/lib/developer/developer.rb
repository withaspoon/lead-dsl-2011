class Developer
  attr_reader :company, :language
  def initialize(params={})
    @company, @language =
      params[:company], params[:language]
  end
end
