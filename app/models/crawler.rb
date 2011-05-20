class Crawler < ActiveRecord::Base

  def self.tag(ip,useragent)
    if Crawler.exists?(:ipaddress => ip, :useragent => useragent)
      crawlers = Crawler.where(:ipaddress => ip, :useragent => useragent)
      crawlers.each do |c|
        c.hits += 1
        c.lastload = DateTime.current
        c.save
      end
    else
      Crawler.create(:useragent => useragent, :ipaddress => ip, :hits => 1, :firstload => DateTime.current, :lastload => DateTime.current)
    end
  end

  def self.alert(crawler)
    crawler.each do |c|
      timediff = DateTime.current.to_i - c.lastalert.to_i
      if (c.hits > 3 && timediff>180)
        AlertMailer.crawler_alert(c).deliver
        c.lastalert = DateTime.current
        c.save
      end
    end
  end

end
