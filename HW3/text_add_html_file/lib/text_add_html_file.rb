require "text_add_html_file/version"
require 'erb'

def add_file(content, file_name = 'index', bypass_html = false)
  bypass_html ? content : content = CGI.escapeHTML(content)
  output_file = File.expand_path("#{file_name}.html")
  template =
  %{<!DOCTYPE html>
  <html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>Content to HTML</title>
  </head>
  <body>
    <%= @content %>
  </body>
  </html>
  }
  @content = content
  file = ERB.new(template)
  result = file.result
  File.open(output_file, 'w') do |f|
    f.write(result)
  end
end
