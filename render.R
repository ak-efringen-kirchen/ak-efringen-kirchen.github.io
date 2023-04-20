rmarkdown::render_site()


dat.term %>%
  htmlTable(
    align="l",
    align.header="l",
    rnames=FALSE,
    ctable = TRUE,
    css.cell = "width: 100pt, 150pt 250pt, 150pt, border: 12pt")
