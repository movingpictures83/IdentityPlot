library(ggplot2)
input <- function(inputfile) {
#Read plot data
Plot.Distribution <<- read.table(inputfile, header = T, sep = "\t")

}

run <- function() {

}

output <- function(outputfile) {
ggplot(Plot.Distribution, aes(x = Genome_sizeM, fill = Superkingdom)) +
  geom_histogram(position="identity", alpha = 0.7, binwidth = 0.1) +
  scale_x_continuous(limits = c(0,11), breaks = seq(0, 11, 1)) +
  ylim(0,500) + theme_bw()
ggsave(outputfile)
}
