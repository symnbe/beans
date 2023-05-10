module ApplicationHelper

  def formatted_time_ago(time)
   now = Time.current
   diff_in_seconds = (now - time).round

    case diff_in_seconds
      when 0..59
        "#{diff_in_seconds}秒前"
      when 60..3599
        "#{diff_in_seconds / 60}分前"
      when 3600..86_399
        "#{diff_in_seconds / 3600}時間前"
      when 86_400..604_799
        "#{diff_in_seconds / 86_400}日前"
      when 604_800..(now.beginning_of_day - 1.second - time).round
        "#{diff_in_seconds / 86_400}日前"
      else
        time.strftime("%Y年%m月%d日")
    end
  end
end
