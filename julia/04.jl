#!/usr/bin/env julia

import Requests
import JSON

response = Requests.get("https://api.github.com/events")

# stuck; any hit to an HTTPS URL returns
  # ERROR: stream is closed or unusable
  #  in check_open at stream.jl:294
  #  in write at stream.jl:730

#data = JSON.parse(response.data[1:10])
#println(data)


