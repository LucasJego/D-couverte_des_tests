def time_string(s)
Time.at(s).utc.strftime("%H:%M:%S")
end
