module ApplicationHelper
    def current_user?(user)
        user == current_user
    end
    
    def greeting
      Time.zone = 'Arizona'
      now = Time.current
      nowzone = Time.zone.now
    
      mornin = nowzone.beginning_of_day
      noon = nowzone.noon
      evening = nowzone.change( hour: 17 )
      night = nowzone.change( hour: 20 )
      manana = nowzone.tomorrow
    
      if (mornin..noon).cover? now
        'Good morning'
      elsif (noon..evening).cover? now
        'Good afternoon'
      elsif (evening..night).cover? now
        'Good evening'
      elsif (night..manana).cover? now
        "You're up late"
      end
    end
end