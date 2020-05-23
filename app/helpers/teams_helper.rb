module TeamsHelper

  def category_options
    Category.pluck(:name ,:id)
  end

  def category_name
    Category.where(id: @team.category_id).pluck(:name).first
  end

end
