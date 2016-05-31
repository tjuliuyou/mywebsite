module BlogsHelper
  def parse_archive_time_range(start_time)
    Time.parse(start_time.to_s).strftime('%Y年 %m月')
  end
end
