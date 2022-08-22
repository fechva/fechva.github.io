library("PubMedWordcloud")
library("RColorBrewer")
irrelevant_words = c("")
my_name = "Felix Vaura"
year_range = c(2017, 2022)
max_n_of_articles = 1000
irrelevant_words = c("associations", "macrophages", "underwent", "postoperative", "participants", "stnfr", "used", "using", "fluid", "increase", "mean", "authors", "cancer", "serum", "pji", "synovial", "failure", "individuals", "study", "studies")
setwd("/Users/fechva/Documents/GitHub/fechva.github.io")

pmids=getPMIDs(author=my_name, dFrom=year_range[1], dTo=year_range[2], n=max_n_of_articles)
abstracts=getAbstracts(pmids)
cleanAbs=cleanAbstracts(abstracts, yrWords=irrelevant_words)
# check where â â±â is and delete the corresponding row
cleanAbs <- cleanAbs[-9, ]
# manually tweak these parameters for optimal results
plotWordCloud(cleanAbs, scale=c(2, 1), max.words=19, color=brewer.pal(8, "RdGy"), rot.per=0)

# Qualitative palettes
# Accent	8
# Dark2	8
# Paired	12
# Pastel1	9
# Pastel2	8
# Set1	9
# Set2	8
# Set3	12

# The diverging palettes are 
# BrBG PiYG PRGn PuOr RdBu RdGy RdYlBu RdYlGn Spectral

# The sequential palettes names are 
# Blues BuGn BuPu GnBu Greens Greys Oranges OrRd PuBu PuBuGn PuRd Purples RdPu Reds YlGn YlGnBu YlOrBr YlOrRd