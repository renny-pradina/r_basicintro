library(readxl)

probsti_e <- read_excel("Documents/.../Data Kelas PROBSTI E.xlsx",
col_types = c("skip", "text",
"text", "text", "text"))

View(probsti_e)

colnames(probsti_e) <- c("color", "feeling", "size", "height")

barplot(table(probsti_e$color))

barplot(table(tolower(probsti_e$color)))

barplot(sort(table(tolower(probsti_e$color))))

barplot(sort(table(tolower(probsti_e$color)), decreasing=TRUE))

collevel = names(sort(table(tolower(probsti_e$color)), decreasing=TRUE))

favecolors = factor(tolower(probsti_e$color), levels=collevel)

barplot(table(favecolors))

levelcolors = c("blue", "green", "black", "grey", "purple", "brown", "red", "orange", "pink", "white")

barplot(table(favecolors), col=levelcolors)

values = table(favecolors)

bp = barplot(values, col=levelcolors)
text(x=bp, y=values, label=values, pos=3)

bp = barplot(values, col=levelcolors, ylim=c(0, max(values)+2))
text(x=bp, y=values, label=values, pos=3)

bp = barplot(values, col=levelcolors, ylim=c(0, max(values)+2), cex.names=0.5)
bp = barplot(values, col=levelcolors, ylim=c(0, max(values)+2), cex.names=0.75)
bp = barplot(values, col=levelcolors, ylim=c(0, max(values)+2), cex.names=0.8)
bp = barplot(values, col=levelcolors, ylim=c(0, max(values)+2), cex.names=0.75)

bp = barplot(values, col=levelcolors, ylim=c(0, max(values)+2), cex.axis=0.75, cex.names=0.75)
text(x=bp, y=values, label=values, pos=3, cex=0.75)

gsub("[^0-9]", "", probsti_e$height)
height = gsub("[^0-9]", "", probsti_e$height)
hist(height)
height = as.numeric(gsub("[^0-9]", "", probsti_e$height))
hist(height)


