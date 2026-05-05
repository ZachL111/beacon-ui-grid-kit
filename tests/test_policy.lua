package.path = "src/?.lua;" .. package.path
local policy = require("policy")

local signal_case_1 = { demand = 76, capacity = 81, latency = 11, risk = 17, weight = 13 }
assert(policy.score(signal_case_1) == 191)
assert(policy.classify(signal_case_1) == "accept")
local signal_case_2 = { demand = 87, capacity = 107, latency = 16, risk = 6, weight = 9 }
assert(policy.score(signal_case_2) == 264)
assert(policy.classify(signal_case_2) == "accept")
local signal_case_3 = { demand = 100, capacity = 71, latency = 16, risk = 10, weight = 11 }
assert(policy.score(signal_case_3) == 244)
assert(policy.classify(signal_case_3) == "accept")
