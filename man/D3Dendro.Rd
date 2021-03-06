% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/D3.R
\name{D3Dendro}
\alias{D3Dendro}
\title{D3 Dendrogram}
\usage{
D3Dendro(JSON, file_out, height = 800, width = 700,
  radial.diameter = 1600, collapsible = FALSE, radial = FALSE)
}
\arguments{
\item{JSON}{A json object}

\item{file_out}{the location and name for the output html file}

\item{height}{the height of the dendrogram}

\item{width}{the width of the dendrogram}

\item{radial.diameter}{The diameter of your radial visualisation. Only needed (and used) when radial=TRUE}

\item{collapsible}{Logical TRUE/FALSE as to whether you want the visualisation to be collapsible with a single-click on the nodes}

\item{radial}{Logical TRUE/FALSE as to whether you want the dendrogram to be radial.}
}
\description{
Creates a html file containing json file and a D3.js Dendrogram
}
\examples{
hc <- hclust(dist(USArrests), "ave")
plot(hc)
JSON<-jsonHC(hc)
D3Dendro(JSON,width=400, file_out="USArrests_Dendo.html")
D3Dendro(JSON,collapsible=TRUE,file_out="USArrests_Dendo_collapse.html")
D3Dendro(JSON,collapsible=FALSE,radial=TRUE, file_out="USArrests_Dendo_radial.html")
D3Dendro(JSON,collapsible=TRUE,radial=TRUE,file_out="USArrests_Dendo_collapse_radial.html")
}
\author{
James Thomson & Andrew Patterson
}
\references{
Mike Bostock's lovely d3: http://d3js.org/ and Captain Anonymous' collapsible radial dendrogram here: http://codepen.io/anon/pen/xItvw
}

