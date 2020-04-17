class YouTube < Liquid::Tag
  Syntax = /^\s*([^\s]+)(\s+(\d+)\s+(\d+)\s*)?/

  def initialize(tagName, markup, tokens)
    super

    if markup =~ Syntax then
      @id = $1

      if $2.nil? then
          @width = 560
          @height = 420
      else
          @width = $2.to_i
          @height = $3.to_i
      end
    else
      raise "No YouTube ID provided in the \"youtube\" tag"
    end
  end

  def render(context)
    # "<iframe class=\"video\ 
    #     allowfullscreen=\"allowfullscreen\"
    #     src=\"http://www.youtube.com/embed/#{@id}?color=white&theme=light\"> </iframe>"
    # "<iframe
    #     allowfullscreen=\"allowfullscreen\"
    #     src=\"http://www.youtube.com/embed/#{@id}?color=white&theme=light\"> </iframe>"

    "<div class=\"videoWrapper\">\n
      <!-- Copy & Pasted from YouTube --> \n
      <iframe width=\"560\" height=\"349\" src=\"http://www.youtube.com/embed/#{@id}?color=white&theme=light\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe> \n
</div>"
  end

  Liquid::Template.register_tag "youtube", self
end
