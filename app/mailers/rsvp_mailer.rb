class RsvpMailer < ActionMailer::Base
  default from: 'wedding@melanieandmichael.us'
  
  def rsvp_email(rsvp)
      @rsvp = rsvp
      mail(to:@rsvp[:email], subject: "RSVP for #{@rsvp[:name]}")
    end
end