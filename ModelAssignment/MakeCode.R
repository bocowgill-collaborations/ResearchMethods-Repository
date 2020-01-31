rm(list=ls())
num.subjects=5000
d=data.frame(subject.id=1:num.subjects,ReadEthicsArticle=rbinom(500,1,0.5))
d$Recommends.Ai.Adoption=as.numeric(d$ReadEthicsArticle+rnorm(num.subjects)<0.5)
write.csv(d,"Ai-Experiment-Data.csv",na="",row.names=F)
