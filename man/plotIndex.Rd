\name{plotIndex}
\alias{plotIndex}
\title{Plot Abundance Index}
\description{Plot \code{scape} model fit to abundance index data.}
\usage{
plotIndex(model, what="s", series=NULL, axes=TRUE, same.limits=FALSE,
          between=list(x=axes,y=axes), ylim=NULL, q=1, bar=1, log=FALSE,
          base=10, main="", xlab="", ylab="", cex.main=1.2, cex.lab=1,
          cex.axis=0.8, cex.strip=0.8, col.strip="gray95",
          strip=strip.custom(bg=col.strip), las=1, tck=c(1,0)/2,
          tick.number=5, lty.grid=3, col.grid="white", pch=16,
          cex.points=1.2, col.points="black", lty.lines=1, lwd.lines=4,
          col.lines="dimgray", lty.bar=1, plot=TRUE, \dots)
}
\arguments{
  \item{model}{fitted \code{scape} model containing element \code{CPUE}
    and/or \code{Survey}.}
  \item{what}{what to plot: \code{"c"}[ommercial] or \code{"s"}[urvey]
    abundance index.}
  \item{series}{vector of strings indicating which gears or surveys to
    plot (all by default).}
  \item{axes}{whether to plot axis values.}
  \item{same.limits}{whether panels should have same y-axis limits.}
  \item{between}{list with \code{x} and \code{y} indicating panel
    spacing.}
  \item{ylim}{vector with lower and upper y-axis limits.}
  \item{q}{denominator to scale the y axis, e.g. to vulnerable biomass.
    Similar to the \code{div} argument in \code{plotN} and
    \code{plotB}.}
  \item{bar}{extent of error bars relative to standard error.}
  \item{log}{whether to log-transform values.}
  \item{base}{logarithm base.}
  \item{main}{main title.}
  \item{xlab}{x-axis label.}
  \item{ylab}{y-axis label.}
  \item{cex.main}{size of main title.}
  \item{cex.lab}{size of axis labels.}
  \item{cex.axis}{size of tick labels.}
  \item{cex.strip}{size of strip labels.}
  \item{col.strip}{color of strip labels.}
  \item{strip}{logical flag (whether to plot strip labels), or a
    function passed to \code{xyplot}.}
  \item{las}{orientation of tick labels: 0=parallel, 1=horizontal,
    2=perpendicular, 3=vertical.}
  \item{tck}{tick mark length.}
  \item{tick.number}{number of tick marks.}
  \item{lty.grid}{line type of gridlines.}
  \item{col.grid}{color of gridlines.}
  \item{pch}{symbol for points.}
  \item{cex.points}{size of points.}
  \item{col.points}{color of points and error bars.}
  \item{lty.lines}{line type of main lines.}
  \item{lwd.lines}{line width of main lines.}
  \item{col.lines}{color of main lines.}
  \item{lty.bar}{line type of error bars.}
  \item{plot}{whether to draw plot.}
  \item{\dots}{passed to \code{xyplot}, \code{panel.xyplot}, and
    \code{panel.xYplot}.}
}
\note{
  The \code{Args} function from the \pkg{gdata} package is recommended
  for reviewing the arguments, instead of \code{args}.
}
\value{
  When \code{plot=TRUE}, a trellis plot is drawn and a data frame is
  returned, containing the data used for plotting. When
  \code{plot=FALSE}, a trellis object is returned.
}
\seealso{
  \code{\link[lattice]{xyplot}}, \code{\link[lattice]{panel.xyplot}},
  and \code{\link[Hmisc]{panel.xYplot}} are the underlying drawing
  functions.

  \code{\link{plotCA}}, \code{\link{plotCL}}, \code{plotIndex}, and
  \code{\link{plotLA}} plot model fit and data.

  \code{\link{plotB}}, \code{\link{plotN}}, and \code{\link{plotSel}}
  plot derived quantities.

  \code{\link{scape-package}} gives an overview of the package.
}
\examples{
plotIndex(x.cod, xlab="Year", ylab="Survey abundance index",
          strip=FALSE)

plotIndex(x.oreo, "c", series="Series 1-1", xlim=c(1981,1990))

plotIndex(x.oreo, "c", xlim=list(c(1981,1990),c(1992,2002)),
          xlab="Year", ylab="Observed CPUE",
          col.points=c("salmon","seagreen"), lty.lines=0)
}
