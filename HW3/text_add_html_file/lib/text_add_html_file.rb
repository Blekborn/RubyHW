require "text_add_html_file/version"

class AddText
  def add_file(homepage)
    out_file = File.open("index.html", "w")
    out_file.puts "<!DOCTYPE html>"
    out_file.puts "<html lang='en'>"
    out_file.puts "<head>"
    out_file.puts "<meta charset='UTF-8'>"
    out_file.puts "<title>hw3</title>"
    out_file.puts "</head>"
    out_file.puts "<body>"
    out_file.puts "<h1>#{homepage}</h1>"
    out_file.puts "<p>Hello guys</p>"
    out_file.puts "</body>"
    out_file.puts "</html>"
    out_file.close
  end
end
