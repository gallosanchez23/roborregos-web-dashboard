module ApplicationHelper
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
