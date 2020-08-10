module EventsHelper
  def sponsor_options
    Sponsor.pluck(:name, :id)
  end

  def datepicker_field(form, field)
    form.text_field(
      field,
      class: 'form-control',
      required: true,
      data: {
        'provide': 'datepicker',
        'date-format': 'dd/mm/yyyy',
        'date-viewMode': 'years',
        'date-autoclose': 'true',
        'date-todayBtn': 'linked',
        'date-todayHighlight': 'true',
        'date-orientation': 'bottom left'
      }
    ).html_safe
  end
end
