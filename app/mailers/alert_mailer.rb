class AlertMailer < ActionMailer::Base
  default :from => "alerts@example.com"
 
  def crawler_alert(crawler)
    @crawler = crawler
    mail(:to => "danny@devtrixlabs.com",
   	 :subject => "Labyrinth Crawler Alert")
  end

end
