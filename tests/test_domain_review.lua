package.path = "src/?.lua;" .. package.path
local review = require("domain_review")

local item = { signal = 77, slack = 30, drag = 22, confidence = 53 }
assert(review.score(item) == 171)
assert(review.lane(item) == "ship")
