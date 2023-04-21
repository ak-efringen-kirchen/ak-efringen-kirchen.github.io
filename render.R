rmarkdown::render_site()


dat.term %>%
  htmlTable(
    align="l",
    align.header="l",
    rnames=FALSE,
    ctable = TRUE,
    css.cell = "width: 100pt, 150pt 250pt, 150pt, border: 12pt")

dat.term<-read.csv("Termine.csv",header = TRUE)
dat.term<-data.frame(dat.term)
dat.term$x<-ifelse(dat.term$Web=="", "", paste0('<a href="',dat.term$Web,'">','link</a>'))




m = matrix(c(
  '<b>Bold</b>', '<em>Emphasize</em>', '<a href="http://rstudio.com">RStudio</a>',
  '<a href="#" onclick="alert(\'Hello World\');">Hello</a>'
), 2)
colnames(m) = c('<span style="color:red">Column 1</span>', '<em>Column 2</em>')
datatable(m, escape=FALSE)  # escape = TRUE by default