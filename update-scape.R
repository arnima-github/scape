library(scape)

x.cod <- importCol("~/r/library/scape/example/cod.res", Dev=TRUE, Survey=TRUE, CAc=TRUE, CAs=TRUE)
x.ling <- importCol("~/r/library/scape/example/ling.res", Dev=TRUE, CPUE=TRUE, Survey=TRUE, CAs=TRUE, CLc=TRUE)
x.oreo <- importCol("~/r/library/scape/example/oreo.res", CPUE=TRUE, Survey=TRUE, CLc=TRUE, CLs=TRUE, LA=TRUE)
x.saithe <- importADCAM("~/r/library/scape/example/saithe")
x.sbw <- importCol("~/r/library/scape/example/sbw.res", Dev=TRUE, Survey=TRUE, CAc=TRUE)
xmcmc <- importMCMC("~/r/library/scape/example/mcmc", pretty.labels=TRUE, l.choose=c("CAc","CAs","Survey","Prior","Total"), p.choose=c("R0","Rinit","uinit","cSleft","cSfull","sSleft","sSfull","logq"))
xproj <- importProj("~/r/library/scape/example/mcmc")

dump("x.cod",    "~/git/arnima-github/scape/data/x.cod.R")
dump("x.ling",   "~/git/arnima-github/scape/data/x.ling.R")
dump("x.oreo",   "~/git/arnima-github/scape/data/x.oreo.R")
dump("x.saithe", "~/git/arnima-github/scape/data/x.saithe.R")
dump("x.sbw",    "~/git/arnima-github/scape/data/x.sbw.R")
dump("xmcmc",    "~/git/arnima-github/scape/data/xmcmc.R")
dump("xproj",    "~/git/arnima-github/scape/data/xproj.R")