require 'httparty'
require 'pry'
require 'json'
require 'csv'
BASE_URL = "https://api.github.com"
user_agents = ['pradeep','sandeep','lasya']
page_num =  17
languages_used = {}
repositories = []
=begin
  Now let us write all the code that does the get request for getting all the repositories step by step 
=end
=begin
  language informatics would be some thing of this data structure 
  {
    'python': 12,
    'ruby': 12
  }
=end
puts "please wait ...."
def write_csv(data_list)
  language_informatics = {}
  CSV.open("data.csv", "wb") do |csv|
    data_list.each do |elem|
      language_selected = elem[:language]
      if(language_selected)
        language_informatics[language_selected] ? (language_informatics[language_selected]+=1) : (language_informatics[language_selected] = 1)
        csv << [ language_selected, Time.new(elem[:created]).strftime('%d-%m-%Y'), elem[:repo_name]]
      end
    end 
  end
  return language_informatics
end


# this would basically return the collection of the hashes 
def top_languages_used(language_statistics)
  ascending_order = language_statistics.values.sort.uniq
  top_five_low_values = ascending_order.uniq[0,5]
  top_five_values = ascending_order.reverse[0,5]
  top_five_languages = []
  top_five_least_used_languages = []
  language_statistics.each do |language_name, language_quantity|
    if(top_five_values.include?(language_quantity))
       top_five_languages.push(language_name)
    elsif(top_five_low_values.include?(language_quantity))
       top_five_least_used_languages.push(language_name)
    end
  end
  puts "the top five languages are:"
  puts "---------------------------------"
  top_five_languages.map{|language| puts language}
  puts "---------------------------------"
  puts "the LEAST five languages are:"
  puts "---------------------------------"
  top_five_least_used_languages[0,6].map{|language| puts language}
  puts "---------------------------------"
  return [
    'high_languages': top_five_languages,
    'low_languages': top_five_least_used_languages
  ]
end

while(1)
  response_obtained = HTTParty.get(
      "#{BASE_URL}/users/google/repos?direction=asc&type=public&page=#{page_num}&per_page=100",
      headers: {'User-Agent': user_agents.sample}
  )
  parsed_response = JSON.parse(response_obtained.body)
  if(parsed_response.length == 0)
    break
  end
  parsed_response.each do |repository_info|
    puts repository_info
    repo_info = {
      "language": repository_info["language"],
      "created": repository_info["created_at"],
      "repo_name": repository_info["name"]    
    }
    repositories.push(repo_info)
  end
  page_num += 1
  sleep(2)
end

language_statistics = write_csv(repositories)
puts "done 😃"
top_languages_used(language_statistics)