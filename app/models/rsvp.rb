class Rsvp < ActiveRecord::Base
  EMAIL_REGEX=/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  validates_presence_of :name
  validates :name, length:{minimum: 3}

  validates_presence_of :email
  validates :email, length:{minimum: 3}
  validates_format_of :email, :with=>EMAIL_REGEX, :on=>:create
  validates_format_of :email, :with=>EMAIL_REGEX, :on=>:update

  validates_presence_of :entree

  validates_inclusion_of :shuttle, :in => [true, false]
  
  def self.shuttles
    Rsvp.where(shuttle:true)
  end

  def self.entrees
    results = {}
    Rsvp.each do |a|
      if(results[a.entree] != null)
        results[a.entree] = [a]
      else
        results[a.entree].push(a)
      end
    end
    results
  end

  def to_s
    "#{a.name} | #{a.email} | #{a.entree} | #{a.shuttle}"
  end
end