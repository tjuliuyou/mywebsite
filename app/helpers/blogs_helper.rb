module BlogsHelper
  def parse_archive_time_range(start_time)
    #code
    Time.parse(start_time.to_s).strftime('%Y-%m')
  end
end
