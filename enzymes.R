

pdf("enzymes_barplots.pdf", width=12, height=12)

par(mfrow=c(3,3), tck=0.02)

var<-alldata$Cellulase
cond1<-alldata$Harvest=="I"
sep<-alldata$Litter
name<-"14 days"
ylab="potential cellulase activity"

m<-tapply(var, list(sep, alldata$Harvest), mean)+tapply(var, list(sep, alldata$Harvest), function(x) CI(x, 0.04))
ylim<-max(m[,1])


      mean<-tapply(var[cond1], sep[cond2], mean)
      sds<-tapply(var[cond1], sep[cond2], sd)
      ci2<-CI2(sds, 5, 0.05)  

      height<-mean
      error<-ci2

      barplot2(height, ylim=c(0, ylim*1.2), plot.ci=TRUE, ci.u=height+error,ci.l=height-error, names.arg=typlev, 
      main=name, ylab=paste(ylab, "(95% CI)"), col=colscale, tck=0.01)
      aov<-aov(lm(var[cond1] ~ sep[cond2]))
      hsd<-HSD.test(aov, "sep[cond2]")
      gr<-hsd$M[order(hsd$trt)]
      text(((0:3)+.6)*1.2, ylim*1.15, gr)

cond1<-alldata$Harvest=="II"
name<-"97 days"

      mean<-tapply(var[cond1], sep[cond2], mean)
      sds<-tapply(var[cond1], sep[cond2], sd)
      ci2<-CI2(sds, 5, 0.05)  
      ylim<-max(m[,2])


      height<-mean
      error<-ci2

      barplot2(height, ylim=c(0, ylim*1.2), plot.ci=TRUE, ci.u=height+error,ci.l=height-error, names.arg=typlev, 
      main=name, ylab="", col=colscale, tck=0.01)
      aov<-aov(lm(var[cond1] ~ sep[cond2]))
      hsd<-HSD.test(aov, "sep[cond2]")
      gr<-hsd$M[order(hsd$trt)]
      text(((0:3)+.6)*1.2, ylim*1.15, gr)

cond1<-alldata$Harvest=="III"
name<-"181 days"

      mean<-tapply(var[cond1], sep[cond2], mean)
      sds<-tapply(var[cond1], sep[cond2], sd)
      ci2<-CI2(sds, 5, 0.05) 
      ylim<-max(m[,3])


      height<-mean
      error<-ci2

      barplot2(height, ylim=c(0, ylim*1.2), plot.ci=TRUE, ci.u=height+error,ci.l=height-error, names.arg=typlev, 
      main=name, ylab="", col=colscale, tck=0.01)
      aov<-aov(lm(var[cond1] ~ sep[cond2]))
      hsd<-HSD.test(aov, "sep[cond2]")
      gr<-hsd$M[order(hsd$trt)]
      text(((0:3)+.6)*1.2, ylim*1.15, gr)

# cond1<-alldata$Harvest=="IV"
# name<-"375 days"
# 
# ylim<-max(m[,4])
# 
#       mean<-tapply(var[cond1], sep[cond2], mean)
#       sds<-tapply(var[cond1], sep[cond2], sd)
#       ci2<-CI2(sds, 5, 0.05) 
# 
#       height<-mean
#       error<-ci2
# 
#       barplot2(height, ylim=c(0, ylim*1.2), plot.ci=TRUE, ci.u=height+error,ci.l=height-error, names.arg=typlev, 
#       main=name, ylab="", col=colscale, tck=0.01)
#       aov<-aov(lm(var[cond1] ~ sep[cond2]))
#       hsd<-HSD.test(aov, "sep[cond2]")
#       gr<-hsd$M[order(hsd$trt)]
#       text(((0:3)+.6)*1.2, ylim*1.15, gr)

var<-alldata$Phenoloxidase
cond1<-alldata$Harvest=="I"
sep<-alldata$Litter
name=""
ylab="potential phenoloxidase activity"

m<-tapply(var, list(sep, alldata$Harvest), mean)+tapply(var, list(sep, alldata$Harvest), function(x) CI(x, 0.04))
ylim<-max(m[,1])


      mean<-tapply(var[cond1], sep[cond2], mean)
      sds<-tapply(var[cond1], sep[cond2], sd)
      ci2<-CI2(sds, 5, 0.05)  

      height<-mean
      error<-ci2

      barplot2(height, ylim=c(0, ylim*1.2), plot.ci=TRUE, ci.u=height+error,ci.l=height-error, names.arg=typlev, 
      main=name, ylab=paste(ylab, "(95% CI)"), col=colscale, tck=0.01)
      aov<-aov(lm(var[cond1] ~ sep[cond2]))
      hsd<-HSD.test(aov, "sep[cond2]")
      gr<-hsd$M[order(hsd$trt)]
      text(((0:3)+.6)*1.2, ylim*1.15, gr)

cond1<-alldata$Harvest=="II"

      mean<-tapply(var[cond1], sep[cond2], mean)
      sds<-tapply(var[cond1], sep[cond2], sd)
      ci2<-CI2(sds, 5, 0.05)  
      ylim<-max(m[,2])


      height<-mean
      error<-ci2

      barplot2(height, ylim=c(0, ylim*1.2), plot.ci=TRUE, ci.u=height+error,ci.l=height-error, names.arg=typlev, 
      main=name, ylab="", col=colscale, tck=0.01)
      aov<-aov(lm(var[cond1] ~ sep[cond2]))
      hsd<-HSD.test(aov, "sep[cond2]")
      gr<-hsd$M[order(hsd$trt)]
      text(((0:3)+.6)*1.2, ylim*1.15, gr)

cond1<-alldata$Harvest=="III"

      mean<-tapply(var[cond1], sep[cond2], mean)
      sds<-tapply(var[cond1], sep[cond2], sd)
      ci2<-CI2(sds, 5, 0.05) 
      ylim<-max(m[,3])


      height<-mean
      error<-ci2

      barplot2(height, ylim=c(0, ylim*1.2), plot.ci=TRUE, ci.u=height+error,ci.l=height-error, names.arg=typlev, 
      main=name, ylab="", col=colscale, tck=0.01)
      aov<-aov(lm(var[cond1] ~ sep[cond2]))
      hsd<-HSD.test(aov, "sep[cond2]")
      gr<-hsd$M[order(hsd$trt)]
      text(((0:3)+.6)*1.2, ylim*1.15, gr)

# cond1<-alldata$Harvest=="IV"
# 
# ylim<-max(m[,4])
# 
#       mean<-tapply(var[cond1], sep[cond2], mean)
#       sds<-tapply(var[cond1], sep[cond2], sd)
#       ci2<-CI2(sds, 5, 0.05) 
# 
#       height<-mean
#       error<-ci2
# 
#       barplot2(height, ylim=c(0, ylim*1.2), plot.ci=TRUE, ci.u=height+error,ci.l=height-error, names.arg=typlev, 
#       main=name, ylab="", col=colscale, tck=0.01)
#       aov<-aov(lm(var[cond1] ~ sep[cond2]))
#       hsd<-HSD.test(aov, "sep[cond2]")
#       gr<-hsd$M[order(hsd$trt)]
#       text(((0:3)+.6)*1.2, ylim*1.15, gr)

var<-alldata$Peroxydase
cond1<-alldata$Harvest=="I"
sep<-alldata$Litter
ylab="potential peroxidase activity"

m<-tapply(var, list(sep, alldata$Harvest), mean)+tapply(var, list(sep, alldata$Harvest), function(x) CI(x, 0.04))
ylim<-max(m[,1])


      mean<-tapply(var[cond1], sep[cond2], mean)
      sds<-tapply(var[cond1], sep[cond2], sd)
      ci2<-CI2(sds, 5, 0.05)  

      height<-mean
      error<-ci2

      barplot2(height, ylim=c(0, ylim*1.2), plot.ci=TRUE, ci.u=height+error,ci.l=height-error, names.arg=typlev, 
      main=name, ylab=paste(ylab, "(95% CI)"), col=colscale, tck=0.01)
      aov<-aov(lm(var[cond1] ~ sep[cond2]))
      hsd<-HSD.test(aov, "sep[cond2]")
      gr<-hsd$M[order(hsd$trt)]
      text(((0:3)+.6)*1.2, ylim*1.15, gr)

cond1<-alldata$Harvest=="II"

      mean<-tapply(var[cond1], sep[cond2], mean)
      sds<-tapply(var[cond1], sep[cond2], sd)
      ci2<-CI2(sds, 5, 0.05)  
      ylim<-max(m[,2])


      height<-mean
      error<-ci2

      barplot2(height, ylim=c(0, ylim*1.2), plot.ci=TRUE, ci.u=height+error,ci.l=height-error, names.arg=typlev, 
      main=name, ylab="", col=colscale, tck=0.01)
      aov<-aov(lm(var[cond1] ~ sep[cond2]))
      hsd<-HSD.test(aov, "sep[cond2]")
      gr<-hsd$M[order(hsd$trt)]
      text(((0:3)+.6)*1.2, ylim*1.15, gr)

cond1<-alldata$Harvest=="III"

      mean<-tapply(var[cond1], sep[cond2], mean)
      sds<-tapply(var[cond1], sep[cond2], sd)
      ci2<-CI2(sds, 5, 0.05) 
      ylim<-max(m[,3])


      height<-mean
      error<-ci2

      barplot2(height, ylim=c(0, ylim*1.2), plot.ci=TRUE, ci.u=height+error,ci.l=height-error, names.arg=typlev, 
      main=name, ylab="", col=colscale, tck=0.01)
      aov<-aov(lm(var[cond1] ~ sep[cond2]))
      hsd<-HSD.test(aov, "sep[cond2]")
      gr<-hsd$M[order(hsd$trt)]
      text(((0:3)+.6)*1.2, ylim*1.15, gr)

cond1<-alldata$Harvest=="IV"

# ylim<-max(m[,4])
# 
#       mean<-tapply(var[cond1], sep[cond2], mean)
#       sds<-tapply(var[cond1], sep[cond2], sd)
#       ci2<-CI2(sds, 5, 0.05) 
# 
#       height<-mean
#       error<-ci2
# 
#       barplot2(height, ylim=c(0, ylim*1.2), plot.ci=TRUE, ci.u=height+error,ci.l=height-error, names.arg=typlev, 
#       main=name, ylab="", col=colscale, tck=0.01)
#       aov<-aov(lm(var[cond1] ~ sep[cond2]))
#       hsd<-HSD.test(aov, "sep[cond2]")
#       gr<-hsd$M[order(hsd$trt)]
#       text(((0:3)+.6)*1.2, ylim*1.15, gr)


dev.off()

pdf("enzyme_ratio_barplots.pdf", width=12, height=8)

par(mfrow=c(2,3), tck=0.02)

var<-alldata$Cellulase/alldata$Phenoloxidase
cond1<-alldata$Harvest=="I"
sep<-alldata$Litter
name<-"14 days"
ylab="potential cellulase activity"

m<-tapply(var, list(sep, alldata$Harvest), mean)+tapply(var, list(sep, alldata$Harvest), function(x) CI(x, 0.04))
ylim<-max(m[,1])


      mean<-tapply(var[cond1], sep[cond2], mean)
      sds<-tapply(var[cond1], sep[cond2], sd)
      ci2<-CI2(sds, 5, 0.05)  

      height<-mean
      error<-ci2

      barplot2(height, ylim=c(0, ylim*1.2), plot.ci=TRUE, ci.u=height+error,ci.l=height-error, names.arg=typlev, 
      main=name, ylab=paste(ylab, "(95% CI)"), col=colscale, tck=0.01)
      aov<-aov(lm(var[cond1] ~ sep[cond1]))
      hsd<-HSD.test(aov, "sep[cond1]")
      gr<-hsd$M[order(hsd$trt)]
      text(((0:3)+.6)*1.2, ylim*1.15, gr)

cond1<-alldata$Harvest=="II"
name<-"97 days"

      mean<-tapply(var[cond1], sep[cond1], mean)
      sds<-tapply(var[cond1], sep[cond1], sd)
      ci2<-CI2(sds, 5, 0.05)  
      ylim<-max(m[,2])


      height<-mean
      error<-ci2

      barplot2(height, ylim=c(0, ylim*1.2), plot.ci=TRUE, ci.u=height+error,ci.l=height-error, names.arg=typlev, 
      main=name, ylab="", col=colscale, tck=0.01)
      aov<-aov(lm(var[cond1] ~ sep[cond1]))
      hsd<-HSD.test(aov, "sep[cond1]")
      gr<-hsd$M[order(hsd$trt)]
      text(((0:3)+.6)*1.2, ylim*1.15, gr)

cond1<-alldata$Harvest=="III"
name<-"181 days"

      mean<-tapply(var[cond1], sep[cond1], mean)
      sds<-tapply(var[cond1], sep[cond1], sd)
      ci2<-CI2(sds, 5, 0.05) 
      ylim<-max(m[,3])


      height<-mean
      error<-ci2

      barplot2(height, ylim=c(0, ylim*1.2), plot.ci=TRUE, ci.u=height+error,ci.l=height-error, names.arg=typlev, 
      main=name, ylab="", col=colscale, tck=0.01)
      aov<-aov(lm(var[cond1] ~ sep[cond1]))
      hsd<-HSD.test(aov, "sep[cond1]")
      gr<-hsd$M[order(hsd$trt)]
      text(((0:3)+.6)*1.2, ylim*1.15, gr)

# cond1<-alldata$Harvest=="IV"
# name<-"375 days"
# 
# ylim<-max(m[,4])
# 
#       mean<-tapply(var[cond1], sep[cond2], mean)
#       sds<-tapply(var[cond1], sep[cond2], sd)
#       ci2<-CI2(sds, 5, 0.05) 
# 
#       height<-mean
#       error<-ci2
# 
#       barplot2(height, ylim=c(0, ylim*1.2), plot.ci=TRUE, ci.u=height+error,ci.l=height-error, names.arg=typlev, 
#       main=name, ylab="", col=colscale, tck=0.01)
#       aov<-aov(lm(var[cond1] ~ sep[cond2]))
#       hsd<-HSD.test(aov, "sep[cond2]")
#       gr<-hsd$M[order(hsd$trt)]
#       text(((0:3)+.6)*1.2, ylim*1.15, gr)

var<-alldata$Cellulase/alldata$Peroxydase

cond1<-alldata$Harvest=="I"&var!=Inf
sep<-alldata$Litter
name=""
ylab="potential phenoloxidase activity"

m<-tapply(var, list(sep, alldata$Harvest), mean)+tapply(var, list(sep, alldata$Harvest), function(x) CI(x, 0.04))
ylim<-max(var[cond1])


      mean<-tapply(var[cond1], sep[cond1], mean)
      sds<-tapply(var[cond1], sep[cond1], sd)
      ci2<-CI2(sds, 5, 0.05)  

      height<-mean
      error<-ci2

      barplot2(height, ylim=c(0, ylim*1.2), plot.ci=TRUE, ci.u=height+error,ci.l=height-error, names.arg=typlev, 
      main=name, ylab=paste(ylab, "(95% CI)"), col=colscale, tck=0.01)
      aov<-aov(lm(var[cond1] ~ sep[cond1]))
      hsd<-HSD.test(aov, "sep[cond1]")
      gr<-hsd$M[order(hsd$trt)]
      text(((0:3)+.6)*1.2, ylim*1.15, gr)

cond1<-alldata$Harvest=="II"

      mean<-tapply(var[cond1], sep[cond1], mean)
      sds<-tapply(var[cond1], sep[cond1], sd)
      ci2<-CI2(sds, 5, 0.05)  
      ylim<-max(m[,2])


      height<-mean
      error<-ci2

      barplot2(height, ylim=c(0, ylim*1.2), plot.ci=TRUE, ci.u=height+error,ci.l=height-error, names.arg=typlev, 
      main=name, ylab="", col=colscale, tck=0.01)
      aov<-aov(lm(var[cond1] ~ sep[cond1]))
      hsd<-HSD.test(aov, "sep[cond1]")
      gr<-hsd$M[order(hsd$trt)]
      text(((0:3)+.6)*1.2, ylim*1.15, gr)
dss

cond1<-alldata$Harvest=="III"

      mean<-tapply(var[cond1], sep[cond1], mean)
      sds<-tapply(var[cond1], sep[cond1], sd)
      ci2<-CI2(sds, 5, 0.05) 
      ylim<-max(m[,3])


      height<-mean
      error<-ci2

      barplot2(height, ylim=c(0, ylim*1.2), plot.ci=TRUE, ci.u=height+error,ci.l=height-error, names.arg=typlev, 
      main=name, ylab="", col=colscale, tck=0.01)
      aov<-aov(lm(var[cond1] ~ sep[cond1]))
      hsd<-HSD.test(aov, "sep[cond1]")
      gr<-hsd$M[order(hsd$trt)]
      text(((0:3)+.6)*1.2, ylim*1.15, gr)

# cond1<-alldata$Harvest=="IV"
# 
# ylim<-max(m[,4])
# 
#       mean<-tapply(var[cond1], sep[cond2], mean)
#       sds<-tapply(var[cond1], sep[cond2], sd)
#       ci2<-CI2(sds, 5, 0.05) 
# 
#       height<-mean
#       error<-ci2
# 
#       barplot2(height, ylim=c(0, ylim*1.2), plot.ci=TRUE, ci.u=height+error,ci.l=height-error, names.arg=typlev, 
#       main=name, ylab="", col=colscale, tck=0.01)
#       aov<-aov(lm(var[cond1] ~ sep[cond2]))
#       hsd<-HSD.test(aov, "sep[cond2]")
#       gr<-hsd$M[order(hsd$trt)]
#       text(((0:3)+.6)*1.2, ylim*1.15, gr)



dev.off()