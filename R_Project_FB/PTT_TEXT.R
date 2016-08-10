require("XML")
require("httr")
.get     <- GET("https://rent.591.com.tw/")
.content <- content(.get,"text")
.htmlParse  <- htmlParse(.content)
.web        <- xpathSApply(.htmlParse,"//div[@class='left']/a[@href]",
                           xmlAttrs)