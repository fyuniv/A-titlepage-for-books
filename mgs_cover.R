library(tikzDevice)
# 
# options(
#   tikzLatexPackages = c(
#     "\\usepackage{tikz}",
#     "\\usepackage[active,tightpage]{preview}",
#     "\\PreviewEnvironment{pgfpicture}",
#     "\\setlength\\PreviewBorder{0pt}"),
#   tikzXelatexPackages = c(
#     "\\usepackage{tikz}\n",
#     "\\usepackage[active,tightpage,xetex]{preview}\n",
#     "\\usepackage{fontspec,xunicode}\n",
#     "\\PreviewEnvironment{pgfpicture}\n",
#     "\\setlength\\PreviewBorder{0pt}\n"),
#   tikzLualatexPackages = c(
#     "\\usepackage{tikz}\n",
#     "\\usepackage[active,tightpage,psfixbb]{preview}\n",
#     "\\usepackage{fontspec,xunicode}\n",
#     "\\PreviewEnvironment{pgfpicture}\n",
#     "\\setlength\\PreviewBorder{0pt}\n")
# )
# 
# 
tikz('cover.tex', width=8.27, height=11.69, standAlone=TRUE)
# 
# library(cairoDevice)
# Cairo_png("points-desktop.png", width = 13.66 * 1.39,
#           height = 7.68 * 1.39)

par(mar = c(0, 0, 0, 0))
n = 72
set.seed(711)
plot.new()
size = c(replicate(n, 1/rbeta(2, 1.5, 4)))
center = t(replicate(n, runif(2)))
center = center[rep(1:n, each = 2), ]
color = apply(replicate(2 * n, sample(c(0:9, LETTERS[1:6]),
                                      8, replace = TRUE)), 2, function(x) sprintf("#%s", paste(x,
                                                                                               collapse = "")))
points(center, cex = size, pch = rep(20:21, n), col = color)

dev.off()