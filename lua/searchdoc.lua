local curl = require("http")
local response = curl.easy({httpheader = {"X-Test-Header1: Header-Data1", "X-Test-Header2: Header-Data2"}, url = "http://httpbin.org/get", writefunction = io.stderr})
return nil
