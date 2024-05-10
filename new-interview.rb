require 'yaml'

FILENAME = './_data/personal_info.yml'

# Function to load existing data from YAML file
def load_data(filename)
  if File.exist?(filename)
    YAML.load_file(filename) || []
  else
    []
  end
end

# Function to add a new record to the data
def add_new_record(data)
  print "URL to interview: "
  url = gets.chomp
  print "Display name: "
  display_name = gets.chomp
  print "Date of Interview (ex. 23 Nov 2024): "
  date = gets.chomp

  data.unshift({ 'date' => date, 'url' => url, 'name' => display_name })
end

# Function to save data back to the YAML file
def save_data(data, filename)
  File.open(filename, "w") do |file|
    file.write(data.to_yaml)
  end
end

# Main script
data = load_data(FILENAME)
add_new_record(data)
save_data(data, FILENAME)

puts "Data has been updated and saved to #{FILENAME}."

