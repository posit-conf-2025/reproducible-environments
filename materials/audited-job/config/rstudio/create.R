# Needs to be run as an admin that has write permissions to /etc/rstudio
#
# This script when run against any R version will 
# * figure out which compatible BioConductor Version exist
# * get all the URLs for the repositories of BioConductor
# * Add both CRAN and BioConductor 
#       into files in /etc/rstudio/repos/repos-x.y.z.conf
# * add entries into /etc/rstudio/r-versions to define the respective 
#       R version (x.y.z) and point to the repos.conf file  

# Check if BiocManager is installed - needed to determine BioConductor Version
if ( ! "BiocManager" %in% utils::installed.packages() ) {
    Sys.setenv(R_PROFILE_USER = "/dev/null")
    system(paste("mkdir -p", Sys.getenv("R_LIBS_USER")))
    utils::install.packages("BiocManager",quiet=TRUE,repos="https://cran.r-project.org/", lib=Sys.getenv("R_LIBS_USER"))
    Sys.unsetenv("R_PROFILE_USER")
  }
library(BiocManager, lib.loc=Sys.getenv("R_LIBS_USER"),quietly=TRUE,verbose=FALSE)
# Get current repo settings
r <- getOption("repos")

# Package Manager URL
pm <- "https://packagemanager.rstudio.com"

# Version of BioConductor as given by BiocManager (can also be manually set)
biocvers <- BiocManager::version()

# Bioconductor Repositories
r<-gsub("https://bioconductor.org", paste0(pm,"/bioconductor"), BiocManager::repositories(version=biocvers))

# CRAN repo
r["CRAN"] <- paste0(pm,"/cran/__linux__/jammy/latest/")

nr=length(r)
r<-c(r[nr],r[1:nr-1])
 
system("mkdir -p /etc/rstudio/repos")
filename=paste0("/etc/rstudio/repos/repos-",R.version$major,".",R.version$minor,".conf")
sink(filename)
for (i in names(r)) {cat(noquote(paste0(i,"=",r[i],"\n"))) }
sink()

x<-unlist(strsplit(R.home(),"[/]"))
r_home<-paste0(x[2:length(x)-2],"/",collapse="")

sink("/etc/rstudio/r-versions", append=TRUE)
cat("\n")
cat(paste0("Path: ",r_home,"\n"))
cat(paste0("Label: R with Bioconductor","\n"))
cat(paste0("Repo: ",filename,"\n"))
cat("\n")
sink()
