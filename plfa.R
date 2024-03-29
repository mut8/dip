alldata$ratioF.B.1

pdf("plfa.pdf", width=6, height=)

par(mfrow=c(3,2), tck=0.02)

var<-alldata$ratioF.B.1
cond1<-alldata$Harvest=="II"
sep<-alldata$Litter
cond2<-alldata$Harvest=="II"
name<-"F:B ratio1 H2"
ylab=""

c3<-is.na(var)!=T
cond1<-cond1[c3]
cond2<-cond2[c3]
sep<-sep[c3]
var<-var[c3]


m<-tapply(var, list(sep, alldata$Harvest[c3]), mean)+tapply(var, list(sep, alldata$Harvest[c3]), function(x) CI(x, 0.04))
ylim<-max(m[,2:3])


      mean<-tapply(var[cond1], sep[cond2], mean)
      sds<-tapply(var[cond1], sep[cond2], sd)
      ci2<-CI2(sds, 5, 0.05)  

      height<-mean
      error<-ci2

      barplot2(height, ylim=c(0, ylim*1.2), plot.ci=TRUE, ci.u=height+error,ci.l=height-error, names.arg=typlev, 
      main=name, ylab=paste(ylab, "95% CI"), col=colscale, tck=0.01)
      aov<-aov(lm(var[cond1] ~ sep[cond2]))
      hsd<-HSD.test(aov, "sep[cond2]")
      gr<-hsd$M[order(hsd$trt)]
      text(((0:3)+.6)*1.2, ylim*1.15, gr)



cond1<-alldata$Harvest=="III"
cond2<-alldata$Harvest=="III"
cond1<-cond1[c3]
cond2<-cond2[c3]
name<-"F:B ratio1 H3"

      mean<-tapply(var[cond1], sep[cond2], mean)
      sds<-tapply(var[cond1], sep[cond2], sd)
      ci2<-CI2(sds, 5, 0.05) 

      height<-mean
      error<-ci2

      height

      barplot2(height, ylim=c(0, ylim*1.2), plot.ci=TRUE, ci.u=height+error,ci.l=height-error, names.arg=typlev, 
      main=name, ylab="", col=colscale, tck=0.01)
      aov<-aov(lm(var[cond1] ~ sep[cond2]))
      hsd<-HSD.test(aov, "sep[cond2]")
      gr<-hsd$M[order(hsd$trt)]
      text(((0:3)+.6)*1.2, ylim*1.15, gr)

var<-alldata$ratioF.B.2
cond1<-alldata$Harvest=="II"
sep<-alldata$Litter
cond2<-alldata$Harvest=="II"
name<-"F:B ratio2 H2"
ylab=""

c3<-is.na(var)!=T
cond1<-cond1[c3]
cond2<-cond2[c3]
sep<-sep[c3]
var<-var[c3]


m<-tapply(var, list(sep, alldata$Harvest[c3]), mean)+tapply(var, list(sep, alldata$Harvest[c3]), function(x) CI(x, 0.04))
ylim<-max(m[,2:3])


      mean<-tapply(var[cond1], sep[cond2], mean)
      sds<-tapply(var[cond1], sep[cond2], sd)
      ci2<-CI2(sds, 5, 0.05)  

      height<-mean
      error<-ci2

      barplot2(height, ylim=c(0, ylim*1.2), plot.ci=TRUE, ci.u=height+error,ci.l=height-error, names.arg=typlev, 
      main=name, ylab=paste(ylab, "95% CI"), col=colscale, tck=0.01)
      aov<-aov(lm(var[cond1] ~ sep[cond2]))
      hsd<-HSD.test(aov, "sep[cond2]")
      gr<-hsd$M[order(hsd$trt)]
      text(((0:3)+.6)*1.2, ylim*1.15, gr)

cond1<-alldata$Harvest=="III"
cond2<-alldata$Harvest=="III"
cond1<-cond1[c3]
cond2<-cond2[c3]
name<-"F:B ratio2 H3"

      mean<-tapply(var[cond1], sep[cond2], mean)
      sds<-tapply(var[cond1], sep[cond2], sd)
      ci2<-CI2(sds, 5, 0.05) 

      height<-mean
      error<-ci2

      barplot2(height, ylim=c(0, ylim*1.2), plot.ci=TRUE, ci.u=height+error,ci.l=height-error, names.arg=typlev, 
      main=name, ylab="", col=colscale, tck=0.01)
      aov<-aov(lm(var[cond1] ~ sep[cond2]))
      hsd<-HSD.test(aov, "sep[cond2]")
      gr<-hsd$M[order(hsd$trt)]
      text(((0:3)+.6)*1.2, ylim*1.15, gr)

var<-alldata$ratioF.B.3
cond1<-alldata$Harvest=="II"
sep<-alldata$Litter
cond2<-alldata$Harvest=="II"
name<-"F:B ratio3 H2"

c3<-is.na(var)!=T
cond1<-cond1[c3]
cond2<-cond2[c3]
sep<-sep[c3]
var<-var[c3]
var
sep
c3
cond2

m<-tapply(var, list(sep, alldata$Harvest[c3]), mean)+tapply(var, list(sep, alldata$Harvest[c3]), function(x) CI(x, 0.04))
ylim<-max(m[,2:3])


      mean<-tapply(var[cond1], sep[cond2], mean)
      sds<-tapply(var[cond1], sep[cond2], sd)
      ci2<-CI2(sds, 5, 0.05)  

      height<-mean
      error<-ci2

      barplot2(height, ylim=c(0, ylim*1.2), plot.ci=TRUE, ci.u=height+error,ci.l=height-error, names.arg=typlev, 
      main=name, ylab=paste(ylab, "95% CI"), col=colscale, tck=0.01)
      aov<-aov(lm(var[cond1] ~ sep[cond2]))
      hsd<-HSD.test(aov, "sep[cond2]")
      gr<-hsd$M[order(hsd$trt)]
      text(((0:3)+.6)*1.2, ylim*1.15, gr)


cond1<-alldata$Harvest=="III"
cond2<-alldata$Harvest=="III"
cond1<-cond1[c3]
cond2<-cond2[c3]

name<-"F:B ratio3 H3"

      mean<-tapply(var[cond1], sep[cond2], mean)
      sds<-tapply(var[cond1], sep[cond2], sd)
      ci2<-CI2(sds, 5, 0.05) 

      height<-mean
      error<-ci2

      barplot2(height, ylim=c(0, ylim*1.2), plot.ci=TRUE, ci.u=height+error,ci.l=height-error, names.arg=typlev, 
      main=name, ylab="", col=colscale, tck=0.01)
      aov<-aov(lm(var[cond1] ~ sep[cond2]))
      hsd<-HSD.test(aov, "sep[cond2]")
      gr<-hsd$M[order(hsd$trt)]
      text(((0:3)+.6)*1.2, ylim*1.15, gr)

dev.off()