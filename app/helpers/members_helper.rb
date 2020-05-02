module MembersHelper
  def role_options
    Member.roles.keys.map do |role|
      [I18n.t("options.members_role.#{role}"), role]
    end
  end

  def major_options
    Member.majors.keys
  end

  def status_options
    Member.statuses.keys.map do |status|
      [I18n.t("options.members_status.#{status}"), status]
    end
  end

  def role_badge(role)
    case role
    when 'software'
      badge = '<span class="badge badge-info">Software</span>'
    when 'marketing'
      badge = '<span class="badge badge-success">Mercadotecnia</span>'
    when 'mechanics'
      badge = '<span class="badge badge-warning">Mecánica</span>'
    when 'electronics'
      badge = '<span class="badge badge-secondary">Electrónica</span>'
    end
    badge.html_safe
  end

  def status_icon(status)
    case status
    when 'active'
      fa_icon 'circle', class: 'text-success mr-2', style: 'font-size: 0.6rem; vertical-align: middle;'
    when 'neutral'
      fa_icon 'circle', class: 'text-info mr-2', style: 'font-size: 0.6rem; vertical-align: middle;'
    when 'conditioned'
      fa_icon 'circle', class: 'text-danger mr-2', style: 'font-size: 0.6rem; vertical-align: middle;'
    when 'inactive'
      fa_icon 'circle', class: 'text-secondary mr-2', style: 'font-size: 0.6rem; vertical-align: middle;'
    when 'affiliated'
      fa_icon 'circle', class: 'text-warning mr-2', style: 'font-size: 0.6rem; vertical-align: middle;'
    end
  end
end
