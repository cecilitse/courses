module EmailHelper
  def protect_email(email)
    rotated_email = email.tr('A-Za-z', 'N-ZA-Mn-za-m')

    "#email-protection-#{rotated_email}"
  end
end
