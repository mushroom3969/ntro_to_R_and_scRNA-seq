library (ggplot2)

# Using custom functions for consistent plots

personal_theme <- function(){
  theme_bw() +
    theme(axis.title=element_text(size=rel(1.25))) +
    theme(plot.title=element_text(size=rel(1.5), hjust=0.5))
}

ggplot(new_metadata) +
  geom_point(aes(x=age_in_days, y=samplemeans, color=genotype, shape=celltype), size=rel(3.0)) +
  xlab("Age (days)") +
  ylab("Mean expression") +
  ggtitle("Expression with Age") +
  personal_theme()

#generate a boxplot
ggplot(new_metadata) +
  geom_boxplot(aes(x=genotype, y=samplemeans, fill = celltype, shape=celltype), size=rel(0.5)) +
  xlab("Genotype ") +
  ylab("Mean expression") +
  ggtitle("Genotype differences in average gene expression") +
  personal_theme()

