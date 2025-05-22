##One Way Anova
library(multcomp)
data("cholesterol")
head(cholesterol)
chol<-cholesterol[1:30,]
chol$trt<factor(chol$trt, levels =c("1times", "2times", "4times"), labels = c("drugA", "drugB", "DrugC"))
out<-lm(response~trt, data=chol)

anova(out)

out<-lm(response~trt, data = chol)
dunnett<-glht(out, linfct = mcp(trt="Dunnett"))
summary(dunnett)

out<-lm(response~trt, data = chol)
tukey<-glht(out, linfct = mcp(trt="Tukey"))
summary(dunnett)

attach(tooth)
levels(tooth$supp)
tapply(len, dose, mean)
tapply(len, dose, mean)
tapply(len, list(supp, dose), mean)
aggregate(len, list(supp, dose), mean)

tooth$supp<-fator(tooth$supp)
tooth$dose<-factor(tooth$dose)
levels(tooth$dose)
lm(len~supp*dose,data = tooth)
out<-lm(len~supp*dose,data = tooth)
out<-lm(len~supp*dose,data = tooth)
anova(out)

out<-lm(len~supp+dose+supp*dose,data = tooth)
anova(out)

out1<-lm(len~dose, data=tooth)
dunnett<-glht(out1,linfct = mcp(dose="Dunnett") )
dunnett<-glht(outl,linfct = mcp(dose="Dunnett") )
summary(dunnett)

out2<-lm(len~supp, data=tooth)
dunnett2<-glht(out2,linfct = mcp(supp="Dunnett") )
summary(dunnett2)


out3<-lm(len~dose, data=tooth)
tukey1<-glht(out3,linfct = mcp(supp="Tukey") )
summary(tukey1)

out4<-lm(len~supp, data=tooth)
tukey2<-glht(out4,linfct = mcp(supp="Tukey") )
summary(tukey2)


ptsd$trt<-factor(ptsd$trt, levels = c("Cont", "EMDR", "CBT"))
levels(ptsd$trt)
str(ptsd)
attach(ptsd)
tapply(post,trt, mean)
aggregate(post, by=list(trt), mean)


out<-lm(post~pre+trt, data=ptsd)
anova(out)
effect("trt", out)


library(multcomp)
dunnett<-glht(out, linfct = mcp(trt="Dunnett"))
summary(dunnett)


shapiro.test(resid(out))
bartless.test(post~trt, data = ptsd)








