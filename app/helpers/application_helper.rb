# coding: utf-8
module ApplicationHelper
  def reltime(time)
    #d = time < 1.day.ago ? "позавчера" : "вчера"
    #str = time_ago_in_words(time) == "1 день" ? "#{d} в #{time.to_s :time}" : "#{time_ago_in_words(time)} назад"
    str = "#{time_ago_in_words(time)} назад".force_encoding("UTF-8")
    #str += time < 1.day.ago ? " в #{time.to_s :time}" : ''
    "<abbr title='#{Russian::strftime(time,'%A %e %B %H:%M')}'>#{str}</abbr>"
  end
end
