rm(list=ls(all=TRUE))
library(XML)
library(bitops)
library(RCurl)
library(NLP)
library(httr)

Sys.setlocale("LC_ALL", "cht")

alldata = read.csv('alldata_path.csv')
orgURL = 'http://taqm.epa.gov.tw/taqm/tw/'
#nums of URL

#for( i in 1:length(alldata$X))
#{
for( i in 1:5)
{
  pttURL <- paste(orgURL, alldata$path[i], sep='')
  urlExists = url.exists(pttURL)

  if(urlExists)
  {
    html = getURL(pttURL, ssl.verifypeer = FALSE, encoding='UTF-8')
    xml = htmlParse(html, encoding='UTF-8')
    text = xpathSApply(xml, "//tbody//tr//td[@class='PSI1']", xmlValue)
    name <- paste('./text/c', i, '.txt', sep='')
    write(text, name)
  }
}