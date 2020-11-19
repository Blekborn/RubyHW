require "tamagochi_gem/version"
require 'nokogiri'

class HtmlTama
  def create_html(content, bypass_html, filename = 'index.html')
    res = content.gsub!(/[<>]/, '') if bypass_html == false
    res = content unless bypass_html == false

    file = File.new("#{Dir.pwd}/#{filename}", "w+")
    file.puts "<!DOCTYPE html>"
    file.puts "<html lang='en'>"
    file.puts "  <head>"
    file.puts "    <meta charset='utf-8'>"
    file.puts "    <title>Lesson3</title>"
    file.puts "    <link rel='stylesheet' href='style.css'>"
    file.puts "  </head>"
    file.puts "  <body>"
    file.puts "      #{res}"
    file.puts "  <script>"
    file.puts "   setInterval(()=>{window.location.reload()}, 5000)"
    file.puts "  </script>"
    file.puts "  </body>"
    file.puts "</html>"
    file.close
  end

  def update(content, filename = 'index.html')
    up = File.open(filename) { |f| Nokogiri::HTML(f) }
    up.at('body') << content
    files = File.open(filename, 'w+')
    files puts up
    files.close
  end

  def open_html(file = 'index.html')
    system("xdg-open #{Dir.pwd}/#{file}")
  end
end
