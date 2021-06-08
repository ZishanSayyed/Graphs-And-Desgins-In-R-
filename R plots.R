                      ############ Graphs and Digrams On R ##############
                                # 1-Bar Digram
                                        
x=c("Panjab","Haryana","Up","Gujrata","Bihar","Karnatak")
y=c(728,932,1469,2903,2153,2276)
barplot(y,names.arg = x, col = "red",border = "black",xlab = "states",ylab = "Yeilds",main = "Yeild of rice in India")


                              #Multiple Bar diagram
colg=c("A","B","C","D")
colgA=c(1200,600,500)
colgB=c(1000,800,650)
colgC=c(1400,700,850)
colgD=c(750,900,300)
d=data.frame(colgA,colgB,colgC,colgD)
d
d1=as.matrix(d)
d1


barplot(d1,names.arg = colg,beside = T,legend=c("Arts","Commerce","Science"),col = 1:2:3,
        xlab = "college",ylab = "No of Student")


barplot(d1,names.arg = colg,beside = F,legend=c("Arts","Commerce","Science"),col = 1:2:3,
        xlab = "college",ylab = "No of Student")


barplot(d1,horiz = T,beside = F,legend=c("Arts","Commerce","Science"),col = 1:2:3,
        xlab = "college",ylab = "No of Student")


                                      #2-Pie Digram
itm=c("food","clothing","Electric","Movie","Rent","Misc")
exp=c(87,24,11,13,25,20)
pie(exp,labels =itm,main ="Expendicture",radius = 1)


                                    #3-Histogram
                                   #Histogram for Ungroup data
x=seq(150,175,5)
f=c(6,11,14,9,3,2)
y=rep(x,f)
hist(y)

t=seq(147.5,177.5,5)
hist(y,breaks = t)

                              #Histogram for group freq data
midx=seq(12.5,112.5,25)
f=c(5,8,13,11,3)
cls_int=seq(0,125,25)
y=rep(midx,f)
hist(y)
hist(y,breaks = cls_int,col = "red")


                                    #Freq Polygone 
lb=seq(0,100,25)
ub=seq(25,125,25)
midx=(lb+ub)/2
f=c(5,8,13,11,3)
x0=c(0,midx,125)
f0=c(0,f,0)
y=rep(midx,f)
bks=seq(0,125,25)
hist(y,bks)
lines(x0,f0)

#or
plot(x0,f0,main = "fre polygone",type = "o",lty=1,xlim =range(min(x0),max(x0)))
#here type join the line with all poitns  
#lty is style of line 



                                 #ogive
f=c(5,8,13,11,3)
lc=cumsum(f)
uc=1:5
for(i in 5:1)
  +{uc[i]=sum(f[5:i])}
lbx=seq(0,100,25)
ubx=seq(25,125,25)

plot(ubx,lc,type = "l",xlim = c(0,100),lwd=2)
lines(lbx,uc,type = "l",lwd=2,xlim = c(0,100))
