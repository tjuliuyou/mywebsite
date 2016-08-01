require "redcarpet"
require "rouge"
require 'rouge/plugins/redcarpet'

module MarkdownHelper

  class Rougeify < Redcarpet::Render::HTML
    # to use Rouge with Redcarpet
    include Rouge::Plugins::Redcarpet
    # overriding Redcarpet method
    # github.com/vmg/redcarpet/blob/master/lib/redcarpet/render_man.rb#L9
    # def block_code(code, language)
    #   # highlight some code with a given language lexer
    #   # and formatter: html or terminal256
    #   # and block if you want to stream chunks
    #   # github.com/jayferd/rouge/blob/master/lib/rouge.rb#L17
    #   Rouge.highlight(code, language || 'text', 'html')
    #   # watch out you need to provide 'text' as a default,
    #   # because when you not provide language in Markdown
    #   # you will get error: <RuntimeError: unknown lexer >
    # end
    def table(header, body)
      "<table class='table table-striped'><thead class='thead-default'>\n#{ header }</thead><tbody>\n#{ body }</tbody></table>\n"
    end
  end


  def markdown(text)
    render_options = {
      filter_html:     false,
      hard_wrap:       true,
      link_attributes: { rel: 'nofollow' }
    }

    # renderer = Rougeify.new(render_options)
    renderer = Rougeify.new

    extensions = {
    # autolink:           true,
    fenced_code_blocks: true,
    lax_spacing:        true,
    footnotes:           true,
    no_intra_emphasis:  true,
    strikethrough:      true,
    superscript:        true,
    highlight:          true,
    safe_links_only:    true,
    space_after_headers: true,
    tables:             true
    }

    Redcarpet::Markdown.new(renderer, extensions).render(text).html_safe

  end

end
