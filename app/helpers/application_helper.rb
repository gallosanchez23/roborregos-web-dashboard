module ApplicationHelper

  def is_active(controller)
    params[:controller] == controller ? "active" : nil
  end

  def alert_class(key)
    case key
    when 'success'
      'success'
    when 'error'
      'danger'
    when 'alert'
      'warning'
    when 'notice'
      'info'
    end
  end
end
