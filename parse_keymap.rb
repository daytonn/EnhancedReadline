
class KeymapParser
  def initialize(file)
    @keymap_lines = File.readlines file
    @keymap_lines.shift
    @keymap_lines.pop
  end

  def save_to(file)
    File.write(file, parsed_lines.join(""))
    puts "KEYMAP.md generated"
  end

  private

  def parsed_lines
    @keymap_lines.each_with_object([]) do |line, memo|
      uncommented_line = uncomment_line(line)

      if is_code_begining?(line)
        memo << ""
        memo << begin_code_block
        memo << uncommented_line
      elsif is_code_ending?(line)
        memo << uncommented_line.gsub(/\,/, "")
        memo << end_code_block
      else
        memo << uncommented_line
      end
    end
  end

  def is_code_begining?(line)
    !!line.match(/^\s+\{/)
  end

  def is_code_ending?(line)
    !!line.match(/^\s+\}\,?/)
  end

  def is_commented?(line)
    !!line.match(/\/\/\s/)
  end

  def is_heading?(line)
    !!line.match(/^\/\//)
  end

  def uncomment_line(line)
    line.gsub(/\/\/\s?/, "")
  end

  def begin_code_block
    "\n  ```js\n"
  end

  def end_code_block
    "  ```\n"
  end
end

keymap_parser = KeymapParser.new(File.join(File.expand_path("..", __FILE__), "Default (OSX).sublime-keymap"))
keymap_parser.save_to("KEYMAP.md")
