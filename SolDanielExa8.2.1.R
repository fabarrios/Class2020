# Example Chap 8, One-Way ANOVA
Exa8_2=read.csv(file="EXA_C08_S02_01.csv", header=TRUE)
summary(Exa8_2)
boxplot(Exa8_2)
Exa8_2.dat = stack(Exa8_2)
names(Exa8_2.dat)
Exa8_2.aov=aov(values~ind, data=Exa8_2.dat)
summary(Exa8_2.aov)
##
plot(values~ind, data=Exa8_2.dat)
TukeyHSD(Exa8_2.aov, ordered=TRUE)
plot(TukeyHSD(Exa8_2.aov), las=2)
abline(v=0, col=2)
#
# Advanced graph.
layout(matrix(c(1, 2, 3, 4), nrow=2, ncol=2, byrow=TRUE))
plot(Exa8_2.aov)