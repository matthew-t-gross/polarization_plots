library(dplyr)
library(ggplot2)

source("base_template.R") #if errors, setwd() accordingly
nominate <- read.csv()  #Set your file path here

glimpse(nominate)

plot_title <- paste0("House Polarization, 90-", max(nominate$congress), " Congresses")

nominate %>%
 filter(chamber == "House" & congress > 89 & party_name %in% c("Democrat", "Republican")) %>%
  ggplot(aes(x=congress, y=nominate_dim1_median, fill=party_name))+
  geom_col()+
  scale_fill_manual(values = c("blue", "red"))+
  coord_flip()+
  scale_x_continuous(breaks=seq(90, 115, 5))+
  ylim(-1,1)+
  labs(title=plot_title,
       y="Median First Dimension NOMINATE Scores", 
       x="Congress", 
       fill="Party",
       caption="Source: Voteview.com")+
  base_template()

