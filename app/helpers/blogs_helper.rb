module BlogsHelper

  def parse_archive_time_range(start_time)
    Time.parse(start_time.to_s).strftime('%Y年 %m月')
  end

  def brief_content(text)
    #code
    #logger.debug { "message: #{text}" }
    pos = text.index(/<!--\s*more\s*-->/)
    pos ? text[0..pos-1] : text
  end

end
