install.packages(c("ggplot2", "ggpubr", "tidyverse", "broom", "AICcmodavg"))
install.packages(c("ggfortify"))
install.packages("devtools")
install.packages("xlsx")

library(devtools)
library(xlsx)
library(ggplot2)
require(ggplot2)
library(ggpubr)
library(tidyverse)
library(broom)
library(AICcmodavg)
library(ggfortify)


####Nitrapyin####
rm(list = ls())
setwd("/Users/chentingting/Desktop/Paper2/paper2/NIs writing paper 1/data")
getwd()

Treatment1 <- read.csv('Nitrapyrin_curve.csv',header=TRUE)

Treat1 <- ggplot(Treatment1, aes(x=Concentration,y=Mean,shape=factor(Samplingtime),color=factor(Samplingtime)))+
  geom_point(aes(colour=factor(Samplingtime)),size=2)+ 
  geom_errorbar(aes(ymin=Mean-SE, ymax=Mean+SE), width=1,size=0.35)+
  geom_line(aes(linetype=factor(Samplingtime)),size=0.4)+
  scale_size_continuous(range = c(0, 1))+
  facet_wrap("Csource", scales = "free_x")+
  labs(y= "Change Ratio of Soil Respiration (unit:1)")+
  labs(x="Concentration (mg/kg soil dw)")+
  theme_bw() + theme(panel.background = element_rect(fill = "transparent",colour = NA),
                     plot.background = element_rect(fill = "transparent",colour = NA),
                     panel.grid.minor = element_blank(),legend.justification=c(0.85,0.1),
                     legend.position=c(0.85,0.1),legend.title = element_blank())+
  scale_y_continuous(breaks=0:5*1) +
  scale_x_continuous(breaks=0:130*15)+
  ggtitle("Nitrapyrin")

plot(Treat1)

####DMPP####
rm(list = ls())
setwd("/Users/chentingting/Desktop/NIs writing paper 1/data")
getwd()

Treatment2 <- read.csv('DMPP_curve.csv',header=TRUE)
Treat2 <- ggplot(Treatment2, aes(x=Concentration,y=Mean,shape=factor(Samplingtime),color=factor(Samplingtime)))+
  geom_point(aes(colour=factor(Samplingtime)),size=2)+ 
  geom_errorbar(aes(ymin=Mean-SE, ymax=Mean+SE), width=1,size=0.35)+
  geom_line(aes(linetype=factor(Samplingtime)),size=0.4)+
  scale_size_continuous(range = c(0, 1))+
  facet_wrap("Csource", scales = "free_x")+
  labs(y= "Change Ratio of Soil Respiration (unit:1)")+
  labs(x="Concentration (mg/kg soil dw)")+
  theme_bw() + theme(panel.background = element_rect(fill = "transparent",colour = NA),
                     plot.background = element_rect(fill = "transparent",colour = NA),
                     panel.grid.minor = element_blank(),legend.justification=c(0.85,0.1),
                     legend.position=c(0.85,0.1),legend.title = element_blank())+
  scale_y_continuous(breaks=0:2*1) +
  scale_x_continuous(breaks=0:60*5)+
  ggtitle("DMPP")

plot(Treat2)

####Trazole####
rm(list = ls())
setwd("/Users/chentingting/Desktop/NIs writing paper 1/data")
getwd()

Treatment3 <- read.csv('Trazole_curve.csv',header=TRUE)
Treat3 <- ggplot(Treatment3, aes(x=Concentration,y=Mean,shape=factor(Samplingtime),color=factor(Samplingtime)))+
  geom_point(aes(colour=factor(Samplingtime)),size=2)+ 
  geom_errorbar(aes(ymin=Mean-SE, ymax=Mean+SE), width=1,size=0.35)+
  geom_line(aes(linetype=factor(Samplingtime)),size=0.4)+
  scale_size_continuous(range = c(0, 1))+
  facet_wrap("Csource", scales = "free_x")+
  labs(y= "Change Ratio of Soil Respiration (unit:1)")+
  labs(x="Concentration (mg/kg soil dw)")+
  theme_bw() + theme(panel.background = element_rect(fill = "transparent",colour = NA),
                     plot.background = element_rect(fill = "transparent",colour = NA),
                     panel.grid.minor = element_blank(),legend.justification=c(0.85,0.1),
                     legend.position=c(0.85,0.1),legend.title = element_blank())+
  scale_y_continuous(breaks=0:2*1) +
  scale_x_continuous(breaks=0:30*7)+
  ggtitle("1H-1,2,4 triazole")

plot(Treat3)

####Methylpyrazole####
rm(list = ls())
setwd("/Users/chentingting/Desktop/NIs writing paper 1/data")
getwd()

Treatment4 <- read.csv('Methylpyrazole_curve.csv',header=TRUE)
Treat4 <- ggplot(Treatment4, aes(x=Concentration,y=Mean,shape=factor(Samplingtime),color=factor(Samplingtime)))+
  geom_point(aes(colour=factor(Samplingtime)),size=2)+ 
  geom_errorbar(aes(ymin=Mean-SE, ymax=Mean+SE), width=1,size=0.35)+
  geom_line(aes(linetype=factor(Samplingtime)),size=0.4)+
  scale_size_continuous(range = c(0, 1))+
  facet_wrap("Csource", scales = "free_x")+
  labs(y= "Change Ratio of Soil Respiration (unit:1)")+
  labs(x="Concentration (mg/kg soil dw)")+
  theme_bw() + theme(panel.background = element_rect(fill = "transparent",colour = NA),
                     plot.background = element_rect(fill = "transparent",colour = NA),
                     panel.grid.minor = element_blank(),legend.justification=c(0.85,0.1),
                     legend.position=c(0.85,0.1),legend.title = element_blank())+
  scale_y_continuous(breaks=0:2*1) +
  scale_x_continuous(breaks=0:15*5)+
  ggtitle("3-methylpyrazole")

plot(Treat4)
