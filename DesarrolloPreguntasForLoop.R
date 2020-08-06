############# desarrollo ejercicio 1
#########################################################################

rm(list = ls())


listaDocumentos <- list(c("mp","Juan","Christofer"),c("of","av01","ampr"),c("of","av01","ante"),
                        c("of","av08","arme"),c("of","av02","ante"),c("of","av07","ampr"),
                        c("of","av03","dape"),c("of","av01","meca"),c("of","av02","dape"),
                        c("mp","Antonia"),c("mp","Christian","Mario"),
                        c("mp","Jose","Pedro","Antonela"),c("of","av05","meca"),
                        c("of","av04","dape"),c("of","av02","arme"))

mp <- 0
niños <- 0
total <- 0

for(caso_n in listaDocumentos){
  if(caso_n [1]=="mp"){
    mp <- mp+1
    niños <- niños+(length(caso_n)-1)
    total <- c(niños,length(caso_n))
  }
}
print(paste("se cuentan con", mp, "mp de",niños,"niños"))





############# desarrollo ejercicio 2
#########################################################################

tematica <-function(listaDocumentos){
  codigo_av01<-c("av01")
  codigo_av02<-c("av02")
  codigo_av03<-c("av03")
  codigo_av04<-c("av04")
  codigo_av05<-c("av05")
  codigo_av07<-c("av07")
  codigo_av08<-c("av08")
  
  
  for (codigo in 1:length(listaDocumentos)){
    if(listaDocumentos[[codigo]][1]=="of"){if(listaDocumentos[[codigo]][2]=="av01"){
      codigo_av01<-c(codigo_av01,listaDocumentos[[codigo]][3])
    }else if(listaDocumentos[[codigo]][2]=="av02"){
      codigo_av02<-c(codigo_av02,listaDocumentos[[codigo]][3])
    }else if(listaDocumentos[[codigo]][2]=="av03"){
      codigo_av03<-c(codigo_av03,listaDocumentos[[codigo]][3])
    }else if(listaDocumentos[[codigo]][2]=="av04"){
      codigo_av04<-c(codigo_av04,listaDocumentos[[codigo]][3])
    }else if(listaDocumentos[[codigo]][2]=="av05"){
      codigo_av05<-c(codigo_av05,listaDocumentos[[codigo]][3])
    }else if(listaDocumentos[[codigo]][2]=="av07"){
      codigo_av07<-c(codigo_av07,listaDocumentos[[codigo]][3])
    }else  if(listaDocumentos[[codigo]][2]=="av08"){
      codigo_av08<-c(codigo_av08,listaDocumentos[[codigo]][3])
    }}else{"no existe"}}
  tematica_asociada<-list(codigo_av01,codigo_av02,codigo_av03,codigo_av04,codigo_av05,codigo_av07,codigo_av08)
}
print(tematica<-tematica(listaDocumentos))





############# desarrollo ejercicio 3
#########################################################################


# el juez decide que los oficios asociados a los casos primero (av01) y ultimo (av08) 
# seran rechazados.

aprobada<-0
reprobada<-0
total_of<-0
for (tematica in listaDocumentos) {
  if(tematica[1]=="of"){
    total_of<-total_of+1
    if(tematica[2]=="av01"||tematica[2]=="av08"){
      aprobada<-aprobada+1
    } else if(tematica[2]=="av02"||tematica[2]=="av03"||tematica[2]=="av04"||tematica[2]=="av05"||tematica[2]=="av07"){
      reprobada<-reprobada+1
    }
  }
  
}
print(paste("Llegaron",total_of,"oficios de los cuales:",aprobada,"son aprobados y",reprobada,"reprobados"))


