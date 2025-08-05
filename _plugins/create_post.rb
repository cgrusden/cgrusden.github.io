# new_post.rb
# A Ruby script to create a new Jekyll post and open it in Vi.
# Place this file in your Jekyll site's root directory.
# Usage: ruby new_post.rb "Your Post Title"
# This will create a file in _posts/ named YYYY-MM-DD-your-post-title.md and open it in Vi

require 'date'
require 'fileutils'

def create_post(title)
  if title.nil? || title.empty?
    puts "Error: Please provide a title as the first argument."
    exit(1)
  end

  today = Date.today
  slug = title.downcase.strip.gsub(/\s+/, '-').gsub(/[^\w-]/, '')
  filename = "#{today.strftime('%Y-%m-%d')}-#{slug}.md"
  posts_dir = '_posts'
  filepath = File.join(posts_dir, filename)

  # Ensure _posts directory exists
  FileUtils.mkdir_p(posts_dir)

  if File.exist?(filepath)
    puts "Error: Post file already exists: #{filepath}"
    exit(1)
  end

  # Basic front matter
  front_matter = <<~FM
    ---
    layout: post
    title: "#{title}"
    date: #{today.strftime('%Y-%m-%d %H:%M:%S')}
    categories: 
    ---
    
    Your post content goes here.
  FM

  File.write(filepath, front_matter)
  puts "Created new post: #{filepath}"

  # Open the file in Vi
  system("vi #{filepath}")
end

# Run the script
create_post(ARGV[0])
