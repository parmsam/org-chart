library(googleVis)
library(tidyverse)
library(openxlsx)

#replicate organizational charts with google vis tools
#create example excel dataset with relations defined
#will use recent ISDH org chart to create a test dataset with only titles (first/last names excluded in test dataset)
#https://www.in.gov/isdh/files/isdh-mgmt-org-chart.pdf

#relevant documentation:
#https://www.rdocumentation.org/packages/googleVis/versions/0.6.0/topics/gvisOrgChart
#https://developers.google.com/chart/interactive/docs/gallery/orgchart

Relations <- read.xlsx("/Users/Sam/Documents/Programming/org chart/org_data.xlsx") %>% mutate(blank="")

Org <- gvisOrgChart(Relations, options=list(width=600, height=600,
                                            size='small', 
                                            allowCollapse=TRUE,
                                            vAxis="{format:'#,###%'}"))
plot(Org)
