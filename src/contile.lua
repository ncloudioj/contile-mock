local cjson = require("cjson")
local b64 = require("ngx.base64")

local tile_set = {
  {
    {
      id = 101,
      name = "Disney+",
      order = 10,
      url = "https://www.geico.com/",
      image_size = 192,
      image_url = "https://cdn.45tu1c0.com/account/73512/200/2521228087483.jpg",
    },
    {
      id = 102,
      name = "HomeDepot",
      order = 20,
      url = "https://www.etsy.com/",
      image_size = 192,
      image_url = "https://cdn.45tu1c0.com/account/25176/200/1521228087115.jpg",
    },
  },
  {
    {
      id = 103,
      name = "eBay",
      order = 10,
      url = "https://www.nike.com/",
      image_size = 192,
      image_url = "https://cdn.45tu1c0.com/account/74161/200/1582930149.jpg",
    },
    {
      id = 104,
      name = "Disney+",
      order = 20,
      url = "https://www.adidas.de/",
      image_size = 192,
      image_url = "https://cdn.45tu1c0.com/account/73512/200/2521228087483.jpg",
    },
  },
  {
    {
      id = 105,
      name = "HomeDepot",
      order = 10,
      url = "https://www.wix.com/",
      image_size = 192,
      image_url = "https://cdn.45tu1c0.com/account/25176/200/1521228087115.jpg",
    },
    {
      id = 106,
      name = "eBay",
      order = 20,
      url = "https://www.samsung.com/",
      image_size = 192,
      image_url = "https://cdn.45tu1c0.com/account/74161/200/1582930149.jpg",
    },
  },
}

local sov = {
  name = "SOV-20230518215316",
  allocations = {
    {
      position = 1,
      allocation = {
        {
          partner = "amp",
          percentage = 100,
        },
        {
          partner = "moz-sales",
          percentage = 0,
        },
      },
    },
    {
      position = 2,
      allocation = {
        {
          partner = "amp",
          percentage = 0,
        },
        {
          partner = "moz-sales",
          percentage = 100,
        },
      },
    },
  },
}

ngx.header.content_type = "application/json; charset=utf-8"
ngx.header.cache_control = "private, max-age=60, stale-if-error=1800, stale-while-revalidate=1800"
local tile = tile_set[math.random(100) % #tile_set + 1]
ngx.say(cjson.encode({
  tiles = tile,
  sov = b64.encode_base64url(cjson.encode(sov)),
}))
