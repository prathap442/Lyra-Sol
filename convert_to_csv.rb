# a small practise on the csv area
def write_csv(data_list)
  CSV.open("data.csv", "wb") do |csv| 
    csv << ['language','created','repo_name']
    data_list.each do |elem| 
      csv << [ elem[:language], Time.new(elem[:repo_name]).strftime('%d-%m-%Y'), elem[:created]]
    end 
  end
end

hashed_data = [
  {:language=>"Python", :created=>"2020-07-16T01:54:32Z", :repo_name=>"uncertainty-baselines"},
  {:language=>"Python", :created=>"2020-05-20T15:01:35Z", :repo_name=>"uncertainty-metrics"}
]

write_csv(hashed_data)