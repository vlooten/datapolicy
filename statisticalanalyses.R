library(compareGroups)

# General data
sum(dtt$Inclusion==1)
sum(dtt$Inclusion==0)
table(dtt$Exclusion_reason)
data_study <- dtt[which(dtt$Inclusion==1),] 
table(data_study$year)

median(table(data_study$year[which(data_study$reform=="Before" & data_study$DataOrigin=="SNDS")]))
median(table(data_study$year[which(data_study$reform=="After" & data_study$DataOrigin!="SNDS")]),na.rm=T)

# Table 2 ####
resu1 <- compareGroups(reform ~ DataOrigin + Org + Study_design2 + Specialty2 + year, data = data_study, 
                       method = c(waist = 2))
resu1 <- compareGroups(reform ~ DataOrigin + Org + Study_design2 + Specialty2 + year, data = data_study, 
                       show.ratio=T, show.p.mul=T, show.all=T)
createTable(resu1)
resu2 <- compareGroups(reform ~ DataOrigin + Org + Study_design2 + Specialty2 + year, data = data_study[which(data_study$DataOrigin=="SNDS"),], 
                       method = c(waist = 2))
createTable(resu2)
