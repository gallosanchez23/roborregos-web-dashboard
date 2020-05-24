module EventsHelper
    def sponsor_options
        Sponsor.pluck(:name ,:id)
    end

    def sponsor_name
        Sponsor.where(id: @event.sponsor_id).pluck(:name).first
    end

    def datepicker_field(form, field)
        form.text_field(field,class: 'form-control', data: { provide: "datepicker",
        'date-format': "yyyy/mm/dd",
        'date-viewMode': 'years',
        'date-autoclose': 'true',
        'date-todayBtn': "linked",
        'date-todayHighlight': 'true',
        'date-orientation': "bottom left"
        }).html_safe
    end
end
