library(tidyverse)
read_csv("data/Dansk kongerække - Ark1.csv")

Kongerækken <- read_csv("data/Dansk kongerække - Ark1.csv")

Kongerækken <- Kongerækken %>% 
  mutate(Regeringstid=Regeringslut-Regeringsstart)

Kongerækken %>% 
  ggplot(aes(x=Regeringsstart, y=Regeringstid))+
  geom_point()+
  geom_line()+
  geom_smooth()+
  labs(x="Tid")
  
