# Data management ####
# V looten
# Last modification : 2019 10 06

library(lubridate)
dtt <- read.csv2("G:/Dropbox/ProjetsInternes/OpenSNDS/20190930data_merge.csv", encoding = "latin")
# Date and time management ####
levels(dtt$Date_demande) <- c(NA, "01  02  19", "01  03  19", "01  04  19", "01  05  19", 
                              "01  06  19", "01  07  19", "01  08  18", "01  08  19", "01  09  19", 
                              "01  10  18", "02  01  19", "02  03  19", "02  04  19", "02  05  19", 
                              "02  06  19", "02  07  18", "02  07  19", "02  08  19", "02  09  19", 
                              "02  11  18", "03  01  19", "03  04  19", "03  05  19", "03  06  19", 
                              "03  07  19", "03  08  18", "03  10  18", "03  12  18", "04  01  19", 
                              "04  02  19", "04  03  19", "04  04  19", "04  06  19", "04  07  19", 
                              "04  09  18", "04  09  19", "04  12  18", "05  03  19", "05  04  19", 
                              "05  06  19", "05  08  19", "05  09  19", "05  10  18", "05  11  18", 
                              "06  02  19", "06  03  19", "06  05  19", "06  06  19", "06  09  18", 
                              "06  09  19", "06  11  18", "07  01  19", "07  02  19", "07  03  19", 
                              "07  05  19", "07  06  19", "07  07  19", "07  08  19", "07  09  18", 
                              "07  11  18", "07  12  18", "08  01  19", "08  02  19", "08  03  19", 
                              "08  05  19", "08  07  19", "08  08  19", "08  10  18", "09  01  19", 
                              "09  04  19", "09  05  19", "09  07  19", "09  08  18", "09  09  18", 
                              "09  09  19", "09  10  18", "09  11  18", "10  01  19", "10  04  19", 
                              "10  05  19", "10  07  19", "10  09  18", "10  09  19", "10  10  18", 
                              "10  12  18", "11  01  19", "11  02  19", "11  03  19", "11  04  19", 
                              "11  06  19", "11  07  19", "11  09  18", "11  10  18", "11  11  18", 
                              "11  12  18", "12  02  19", "12  04  19", "12  06  19", "12  08  19", 
                              "12  09  18", "12  09  19", "12  10  18", "12  12  18", "13  02  19", 
                              "13  03  19", "13  05  19", "13  06  19", "13  08  18", "13  08  19", 
                              "13  09  18", "13  09  19", "13  11  18", "14  01  19", "14  02  19", 
                              "14  04  19", "14  05  19", "14  06  19", "14  07  19", "14  08  19", 
                              "14  09  18", "14  11  18", "14  12  18", "15  01  19", "15  02  19", 
                              "15  03  19", "15  04  19", "15  07  19", "15  09  19", "15  10  18", 
                              "16  04  19", "16  05  19", "16  07  18", "16  07  19", "16  09  19", 
                              "16  10  18", "16  11  18", "17  04  19", "17  05  19", "17  06  19", 
                              "17  07  19", "17  08  19", "17  09  18", "17  09  19", "17  10  18", 
                              "17  12  18", "18  01  19", "18  02  19", "18  03  19", "18  04  19", 
                              "18  06  19", "18  07  18", "18  07  19", "18  09  18", "18  09  19", 
                              "18  10  18", "18  12  18", "19  01  19", "19  02  19", "19  03  19", 
                              "19  04  19", "19  06  19", "19  07  19", "19  08  19", "19  09  18", 
                              "19  09  19", "19  11  18", "20  02  19", "20  03  19", "20  04  19", 
                              "20  05  19", "20  06  19", "20  08  19", "20  09  18", "20  09  19", 
                              "20  12  18", "20080114", "20080725", "20080804", "20090403", 
                              "20090404", "20090427", "20090525", "20090602", "20090929", "20091104", 
                              "20091116", "20091120", "20100107", "20100129", "20100202", "20100317", 
                              "20100419", "20100502", "20100716", "20100806", "20100827", "20100902", 
                              "20101025", "20101029", "20101108", "20101117", "20101123", "20110301", 
                              "20110311", "20110314", "20110405", "20110421", "20110426", "20110506", 
                              "20110512", "20110704", "20110712", "20110915", "20111010", "20111019", 
                              "20111021", "20111217", "20111219", "20111229", "20120125", "20120201", 
                              "20120224", "20120410", "20120427", "20120524", "20120620", "20120628", 
                              "20120711", "20121004", "20121011", "20121017", "20121019", "20121112", 
                              "20121203", "20121210", "20121213", "20130107", "20130110", "20130131", 
                              "20130207", "20130211", "20130306", "20130404", "20130412", "20130417", 
                              "20130429", "20130507", "20130531", "20130617", "20130715", "20130814", 
                              "20130823", "20130827", "20130916", "20131009", "20131029", "20131115", 
                              "20131219", "20131223", "20131224", "20140101", "20140109", "20140115", 
                              "20140120", "20140121", "20140123", "20140206", "20140321", "20140415", 
                              "20140428", "20140509", "20140520", "20140522", "20140526", "20140606", 
                              "20140611", "20140616", "20140707", "20140711", "20140724", "20140729", 
                              "20140730", "20140808", "20140819", "20140910", "20140911", "20141001", 
                              "20141002", "20141008", "20141013", "20141015", "20141021", "20141023", 
                              "20141215", "20141217", "20141219", "20141223", "20141226", "20150114", 
                              "20150115", "20150120", "20150122", "20150224", "20150226", "20150313", 
                              "20150316", "20150317", "20150324", "20150407", "20150410", "20150413", 
                              "20150415", "20150429", "20150522", "20150526", "20150529", "20150601", 
                              "20150721", "20150727", "20150729", "20150806", "20150812", "20150814", 
                              "20150820", "20150821", "20150825", "20150827", "20150831", "20150914", 
                              "20150915", "20150921", "20150922", "20150929", "20150930", "20151001", 
                              "20151002", "20151006", "20151012", "20151015", "20151016", "20151021", 
                              "20151105", "20151106", "20151113", "20151207", "20151211", "20151222", 
                              "20160111", "20160114", "20160125", "20160127", "20160203", "20160205", 
                              "20160208", "20160209", "20160210", "20160211", "20160217", "20160218", 
                              "20160222", "20160223", "20160307", "20160321", "20160329", "20160331", 
                              "20160404", "20160405", "20160418", "20160421", "20160426", "20160427", 
                              "20160428", "20160429", "20160502", "20160509", "20160516", "20160517", 
                              "20160520", "20160602", "20160606", "20160607", "20160608", "20160609", 
                              "20160614", "20160616", "20160617", "20160620", "20160621", "20160622", 
                              "20160627", "20160701", "20160721", "20160727", "20160824", "20160829", 
                              "20160831", "20160901", "20160907", "20160909", "20160915", "20160916", 
                              "20160930", "20161006", "20161010", "20161014", "20161017", "20161024", 
                              "20161028", "20161102", "20161103", "20161104", "20161114", "20161121", 
                              "20161229", "20170116", "20170127", "20170201", "20170206", "20170207", 
                              "20170208", "20170213", "20170217", "20170220", "20170223", "20170302", 
                              "20170308", "20170314", "20170323", "20170324", "20170327", "20170329", 
                              "20170404", "20170427", "21  01  19", "21  02  19", "21  03  19", 
                              "21  04  19", "21  05  19", "21  06  19", "21  08  18", "21  08  19", 
                              "21  09  18", "21  12  18", "22  02  19", "22  03  19", "22  05  19", 
                              "22  07  19", "22  08  19", "22  10  18", "22  11  18", "22  12  18", 
                              "23  04  19", "23  05  19", "23  06  19", "23  07  19", "23  08  18", 
                              "23  08  19", "23  10  18", "23  11  18", "24  01  19", "24  04  19", 
                              "24  05  19", "24  06  19", "24  07  19", "24  10  18", "25  01  19", 
                              "25  02  19", "25  03  19", "25  04  19", "25  06  19", "25  07  19", 
                              "25  09  18", "25  10  18", "26  01  19", "26  03  19", "26  04  19", 
                              "26  06  19", "26  07  19", "26  08  19", "26  10  18", "26  11  18", 
                              "27  02  19", "27  03  19", "27  05  19", "27  06  19", "27  08  18", 
                              "27  08  19", "27  09  18", "27  10  18", "27  11  18", "28  01  19", 
                              "28  02  19", "28  03  19", "28  05  19", "28  06  19", "28  08  19", 
                              "28  11  18", "29  01  19", "29  03  19", "29  04  19", "29  05  19", 
                              "29  06  19", "29  08  19", "29  10  18", "29  11  18", "30  01  19", 
                              "30  04  19", "30  07  19", "30  08  18", "30  08  19", "30  10  18", 
                              "30  11  18", "31  01  19", "31  03  19", "31  05  19", "31  10  18", 
                              "20170801", "20180801", "20190801", "20170801", "20180801", "20180401", 
                              "20190401", "20171201", "20181201", "20180201", "20190201", 
                              "20180101", "20190101", "20190101", "20180701", "20190701", 
                              "20190701", "20180601", "20190601", "20180501", "20190501", "20180301", 
                              "20190301", "20171101", "20181101", "20171001", "20181001", "20170901", 
                              "20180901") 
dtt$Date_demande <- as.character(dtt$Date_demande)
idx_na <- which(is.na(dtt$Date_demande))
dtt$Date_demande2 <- dmy("01012017")
dtt$Date_demande2[which(nchar(dtt$Date_demande)==8)] <- ymd(dtt$Date_demande[which(nchar(dtt$Date_demande)==8)])
dtt$Date_demande2[which(nchar(dtt$Date_demande)==10)] <- dmy(dtt$Date_demande[which(nchar(dtt$Date_demande)==10)])
dtt$Date_demande2[idx_na] <- NA 
dtt$Date_demande <- dtt$Date_demande2
dtt$year <- year(dtt$Date_demande)

# Organization data management ####

public_org <- c("Agence", "CHU", 
             "CHU ", "CNAM", "CNRS", "Ecole", "INSERM", "IRDES", "MinistŠre/Agences", 
             "ORS", "Recherche publique")
private_org <- c("Bureau d'‚tude","OPBL", "Recherche priv‚e")
levels(dtt$Type_Org)[which(levels(dtt$Type_Org) %in% public_org)] <- "Public"
levels(dtt$Type_Org)[which(levels(dtt$Type_Org) %in% private_org )] <- "Private"
levels(dtt$Type_Org)[which(!(levels(dtt$Type_Org) %in% c("Public","Private") ))] <- NA

agency_gov <- c("Agence / MinistŠre", "Agence de la Biom‚decine", "Agence de la Biom‚decine (ABM)", 
  "Agence Technique de l'Information sur l'Hospitalisation (ATIH)", 
  "Agences", "CNAM","Collectivit‚ locale","ESPIC", "MinistŠre","GENES","INPES","IAU Ile de France",
  "Institut  des Donn‚es de Sant‚")
levels(dtt$Org)[which(levels(dtt$Org) %in% agency_gov)] <- "Government and Agencies"

hospital_and_institutes <- c("APHM", "APHP-URCECO", "APHP - URCECO", "APHP URCECO", 
                             "APHPH URCECO","AP HP - H“pital Henri Mondor", "AP HP Piti‚ Salp\210triŠre", 
                             "AP HP URCECO", 
                             "Centre R‚gional de Pharmacovigilance du CHU de Montpellier", 
                             "CHI", "CHIC", 
                             "CHRU de Montpellier", "CHU", "CHU Amiens", "CHU Bordeaux - GH Pellegrin", 
                             "CHU de Bordeaux", "CHU de Bordeaux ", "CHU de Brest", "CHU de Caen", 
                             "CHU de Dijon", "CHU de la R‚union", "CHU de Lille", "CHU de Limoges", 
                             "CHU de Montpellier", "CHU de Nimes", "CHU de Rennes", "CHU de Toulouse", 
                             "CHU Montpellier", "CHU Nice", "CLCC", "Clinique",
                             "Etablissement / F‚d‚ration de sant‚ (CHU, CHRU, CLCC, clinique, etc..ÿ)", 
                             "F‚d‚ration d'‚tablissements", "F‚d‚ration R‚gionale de Recherche en Sant‚ Mentale du Nord-Pas-de-Calais (F2RSM)",
                             "GIP", "H“pital Broca - APHP", "H“pital priv‚", "H“pital Robert Debr‚ - APHP", 
                             "H“pital Saint-Louis",
                              "Hopital Necker", "Hospices Civils de Lyon", 'Hospices Civils de Lyon - P“le IMER',
                             "Institut Bergoni‚", "Institut Curie")
levels(dtt$Org)[which(levels(dtt$Org) %in% hospital_and_institutes)] <- "Hospitals and care structures"

school_researchcenter <- c("Centre de recherche", 
                           "Centre International de Recherche sur le Cancer (CIRC/IARC)", 
                           "CEPIDC", "CESPA du Service Sant‚ des Arm‚es", "CNRS - LIRIS UMR 5205", 
                           "CNRS - UMR ESPACE 6012", "D&A Pharma", "EHESP", "EPST", "Facult‚ de m‚decine de Cr‚teil", 
                           "HEC Paris", "HEI - Ecole d'Ing‚nieur", "IFSTTAR", "INC", "INCA", "INRA", "INSERM", "INSERM-CNRS", 
                           "INSERM ", "INSERM - Unit‚ 1018", "INSERM - Unit‚ 1027", "INSERM - Unit‚ 1184", 
                           "INSERM - Unit‚ 557", "INSERM - Unit‚ 657", "INSERM - Unit‚ 687", 
                           "INSERM - Unit‚ 700", "INSERM - Unit‚ 780", "INSERM - Unit‚ 897", 
                           "INSERM - Unit‚ 912", "INSERM - UPMC UMR-S 1136 - Institut Pierre-Louis d'Epid‚miologie et de Sant‚ Publique (Iplesp)", 
                           "INSERM CIC 1401", "INSERM CIC 9502", "INSERM CIC EC 1425", "INSERM U. 1136", 
                           "INSERM U1018", "INSERM UMRS 1123", "Institut de recherche (INSERM, CNRS, etc?)", 
                           "Institut de Sant‚ Publique, d'Epid‚miologie et de D‚veloppement (ISPED) Universit‚ de Bordeaux", 
                           "Institut des Actuaires", "IRDES", "IRSN", "IRSR -Institut de Recherche en Sant‚ Respiratoire des Pays de la Loire", 
                           "Laboratoire de recherche","universit‚ / Ecole", "Universit‚ / Ecole", "Universit‚ Bretagne Sud\nLaboratoire PREFICS", 
                           "Universit‚ Claude Bernard Lyon 1\nLaboratoire de Sciences actuarielle et financiŠre", 
                           "Universit‚ de Marseille", "Universit‚ de Tours ? Facult‚ de Droit, Economie et Sciences Sociales", 
                           "Universit‚ de Versailles", "Universit‚ de Versailles - Facult‚ des sciences de la sant‚ - ", 
                           "Universit‚ Paris Est Cr‚teil UPEC", "Universit‚ Paris Ouest / Nanterre")

levels(dtt$Org)[which(levels(dtt$Org) %in% school_researchcenter)] <- "Schools and research centers"

Associations_citizens <- c("Association \"Mieux Prescrire\"", "Association / Collectivit‚ territoriale", 
                           "Association des Professionnels de P‚rinatalit‚s de Bourgogne", 
                           "Association loi 1901", "Association Mieux Prescrire", "Association Nationale des Gyn‚cologues Obst‚triciens pour la gestion des risques l‚dicaux (GYNERISQ)", "FNMF", 
                           "FNORS", "Fondation Transplantation",
                           "Observatoire de la Sant‚ des V‚t‚rans", "Observatoire R‚gional de la Sant‚ et du Social de Picardie", 
                           "Observia", "ORS Bourgogne / Franche-Comt‚", "ORS d'Aquitaine", 
                           "ORS de Bourgogne", "ORS des Pays de la Loire", "ORS Ile de France", 
                           "ORS PACA", "ORS Poitou-Charentes", "ORS Rh“ne-Alpes", "Plateforme sant‚", 
                           "RIFHOP-PALIPED", "Soci‚t‚ Fran‡aise de Chirurgie Orthop‚dique et Traumatologique", 
                           "URPS d'Ile de France des M‚decins Lib‚raux")

levels(dtt$Org)[which(levels(dtt$Org) %in% Associations_citizens)] <- "Citizens and associations"

private_compagny_CRO <- c("Allianz IARD", "Assureur", "Autre", "Autres", "Bureau d'‚tude", 
                          "Bureau d?‚tude / CRO", "CELTIPHARM", "CELTIPHARM - OPENHEALTH", 
                          "CEMKA-EVAL", "HEVA", "IMS Health", "Industriel de sant‚", "industriel sant‚", 
                          "Industriel sant‚", "M‚dia", "MAAF Sant‚", "Sant‚Clair", "Soci‚t‚ Fran‡aise de dermatologie - Groupe Bulles et FISARD", 
                          "STATESIA")

levels(dtt$Org)[which(levels(dtt$Org) %in% private_compagny_CRO)] <- "Private companies and CRO"

# table(dtt$Org)
# table(dtt$Org, dtt$Type_Org)
# dtt$Type_Org[which(dtt$Org=="Hospitals and care structures" & is.na(dtt$Type_Org) )] <- "Public"
dtt$Type_Org[which(dtt$Org=="Private companies and CRO")] <- "Private"
dtt$Type_Org[which(dtt$Org=="Government and Agencies" & is.na(dtt$Type_Org) )] <- "Public"
# dtt$Type_Org[which(dtt$Org=="Citizens and associations" & is.na(dtt$Type_Org) )] <- "Private"
# dtt$Type_Org[which(dtt$Org=="Schools and research centers" & is.na(dtt$Type_Org) )] <- "Public"
dtt$Type_Org[which(dtt$Status=="MR005" & is.na(dtt$Type_Org) )] <- "Public"
dtt$Type_Org[which(dtt$Status=="MR006" & is.na(dtt$Type_Org) )] <- "Private"

#Type data ####
dtt$DataOrigin <- 0
dtt$DataOrigin[unique(c(grep("PMSI",dtt$Type_data),grep("C‚pidc seul",dtt$Type_data)))] <- "National data without insurance data"
dtt$DataOrigin[unique(c(which(dtt$Type_data=="Extraction d'un ‚chantillon"),grep("SNDS",dtt$Type_data),grep("EGB",dtt$Type_data)))] <- "SNDS"
dtt$DataOrigin[which(dtt$DataOrigin==0 & dtt$Inclusion==1 & dtt$Data_pairing %in% c("oui","Oui"))] <- "SNDS"
dtt$DataOrigin[which(dtt$Status %in% c("MR005", "MR006") )] <- "National data without insurance data"

# Type of studies ####
dtt$Study_design2 <- "Unknown"
dtt$Study_design2[which(dtt$Study_design %in% c("Case-control study", "Descriptive","Transervsal study", "Transversal study"))] <- "Descriptive and transversal study"
dtt$Study_design2[which(dtt$Study_design %in% c("Longitudinal study", "Prediction study", 
                                                "Predictive medicine", "Predictive study", "Prognostic study", 
                                                "Pronostic study"))] <- "Longitudinal or prognosis studies"
dtt$Study_design2[which(dtt$Study_design %in% c("Economics"))] <- "Economics studies"
dtt$Study_design2[which(dtt$Study_design %in% c("Pharmacoeconomics", "Pharmacoepdemiology", "Pharmacoepidemiology", 
                                                "Pharmacopidemiology", "Pharmarcoepidemiology"))] <- "Pharmacoepidemiology, pharmacoeconomics studies"

# Speciality ####
dtt$Specialty2 <- "Other"
dtt$Specialty2[which(dtt$Specialty %in% c("Addictology","Neurology","Psychiatru", "Psychiatry"))] <- "Psychiatry and addictology"
dtt$Specialty2[which(dtt$Specialty %in% c("Cardiology", "Vascular medicine"))] <- "Cardiology and vascular medicine"
dtt$Specialty2[which(dtt$Specialty %in% c("Economics","Occupational medicine", "Occupational Medicine","Public health", 
                                          "Public heatlth"))] <- "Public health and occupational medicine"
dtt$Specialty2[which(dtt$Specialty %in% c("Digestive surgery","ENT","Ophtalmology", "Orthopedy","Stomatology","Gynecology", "Urology",
                                          "Surgery"))] <- "Surgery"
dtt$Specialty2[which(dtt$Specialty %in% c("Dermatology", "Endocrinology", "Gastroenterology","Geriatry", 
                                          "Hepatology", "Immunology", "Infectiology", "Internal medicine", 
                                          "Internal Medicine", "Nephrology", "Nurse", 
                                          "Pediatry", "Pharmacology", "Pneumology","Radiology", "Rheumatology", 
                                          "Toxicology", "Traumatology"))] <- "Internal medicine"
dtt$Specialty2[which(dtt$Specialty %in% c("Haematology", "Oncology"))] <- "Hematology and oncology"
dtt$Specialty2[which(dtt$Specialty %in% c("General medicine", "General Medicine","Primary cares"))] <- "Primary cares"
dtt$Specialty2[grep("cancer", tolower(dtt$Disease.or.event))] <- "Hematology and oncology"
dtt$Specialty2[grep("oncology", tolower(dtt$Disease.or.event))] <- "Hematology and oncology"

#Inclusion
dtt$Exclusion_reason <- as.character(dtt$Exclusion_reason)
dtt$Exclusion_reason[which(is.na(dtt$Date_demande) & dtt$Inclusion==1)] <- "Date missing"
dtt$Inclusion[which(is.na(dtt$Date_demande) & dtt$Inclusion==1)] <- 0
dtt$reform <- ifelse(dtt$Status=="IDS","Before","After")
dtt$reform <- as.factor(dtt$reform)
# Data preparation for statistical analyses ####

dtt$Specialty2 <- as.factor(dtt$Specialty2)
dtt$Study_design2 <- as.factor(dtt$Study_design2)
dtt$DataOrigin <- as.factor(dtt$DataOrigin)
dtt$Org <- as.factor(dtt$Org)
dtt$Inclusion <- as.factor(dtt$Inclusion)

