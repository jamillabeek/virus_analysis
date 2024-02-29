library(ComplexHeatmap)
library(RColorBrewer)
library(circlize)

readRDS("data/deseq_counts_scaled.rds")
readRDS("data/deseq_counts_summary.rds")

## change legend to discrete
Heatmap(deseq_counts_scaled,
        name = "Expression", 
        show_row_names = FALSE, show_column_names = TRUE,
        cluster_rows = TRUE, cluster_columns = FALSE) + 
  Heatmap(deseq_counts_summary, 
          name = "significance", 
          show_row_names = FALSE, show_column_names = TRUE,
          cluster_rows = FALSE, cluster_columns = FALSE,
          col = colorRamp2(c(0, 1), c("lightgrey", "black")))
