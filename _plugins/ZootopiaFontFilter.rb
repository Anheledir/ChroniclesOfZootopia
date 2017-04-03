module Jekyll
  module ZootopiaFilter
    def zootopia_font(input)
      pattern = /[^ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ]/
      input.gsub(pattern){|match|"<i>" + match + "</i>"}
    end
  end
end

Liquid::Template.register_filter(Jekyll::ZootopiaFilter)