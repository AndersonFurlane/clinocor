module ApplicationHelper

  def formated_birthdate(birthdate)
        unless birthdate.blank?
          birthdate.strftime('%d/%m/%Y')
        else
          ''
        end
      end

end
