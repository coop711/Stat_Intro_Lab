Nature1 <- matrix(c(33, 11, 6, 6, 12, 16), nrow = 2)
rownames(Nature1) <- c("Identical", "Fraternal")
colnames(Nature1) <- c("Alike", "Somewhat_Alike", "Not_Alike")
Nature1
options(digits = 3)
library(RColorBrewer)
cols <- brewer.pal(8, "Accent")
Nature1_p <- prop.table(Nature1, margin = 1) * 100
c1 <- ncol(Nature1)
b1 <- barplot(t(Nature1_p), width = 0.5, xlim = c(0, 2.7), space = 1.2, col = cols[1:3], yaxt = "n")
axis(side = 2,
     at = apply(t(Nature1_p), MARGIN = 2, cumsum),
     labels = format(apply(t(Nature1_p), MARGIN = 2, cumsum), digits = 3, nsmall = 1), las = 2)
y_text <- c(t(Nature1_p)[1, ] / 2, 
            t(Nature1_p)[1, ]  + t(Nature1_p)[2, ] / 2, 
            t(Nature1_p)[1, ]  + t(Nature1_p)[2, ] + t(Nature1_p)[3, ] / 2)
text(rep(b1, 3), y_text, labels = c(Nature1))
legend("topleft", inset = 0.01, fill = cols[3:1], legend = rev(colnames(Nature1)))
title(main = "Smoking Habits of Twins")
mosaicplot(Nature1, 
           col = cols[1:3], 
           main = "Smoking Habits of Twins", 
           xlab = "Twins", 
           ylab = "Resemblance")
     
Nature2 <- matrix(c(44, 9, 9, 9), nrow = 2)
rownames(Nature2) <- c("Identical", "Fraternal")
colnames(Nature2) <- c("Alike", "Not_Alike")
Nature2
Nature2_p <- prop.table(Nature2, margin = 1) * 100
c2 <- ncol(Nature2)
b2 <- barplot(t(Nature2_p), space = 0.8, col = cols[1:2], yaxt = "n")
axis(side = 2,
     at = apply(t(Nature2_p), MARGIN = 2, cumsum),
     labels = format(apply(t(Nature2_p), MARGIN = 2, cumsum), digits = 3, nsmall = 1), las = 2)
y_text2 <- c(t(Nature2_p)[1, ] / 2, 
            t(Nature2_p)[1, ]  + t(Nature2_p)[2, ] / 2)
text(rep(b2, 2), y_text2, labels = c(Nature2))
legend("top", fill = cols[2:1], legend = rev(colnames(Nature2)))
title(main = "Smoking Habits of Twins 2")
mosaicplot(Nature2, 
           col = cols[1:2], 
           main = "Smoking Habits of Twins 2", 
           xlab = "Twins", 
           ylab = "Resemblance")

Nature3 <- matrix(c(23, 21, 4, 5), nrow = 2)
rownames(Nature3) <- c("Lived Together", "Seperated")
colnames(Nature3) <- c("Alike", "Not_Alike")
Nature3
Nature3_p <- prop.table(Nature3, margin = 1) * 100
c3 <- ncol(Nature3)
b3 <- barplot(t(Nature3_p), space = 0.8, col = cols[1:2], yaxt = "n")
axis(side = 2,
     at = apply(t(Nature3_p), MARGIN = 2, cumsum),
     labels = format(apply(t(Nature3_p), MARGIN = 2, cumsum), digits = 3, nsmall = 1), las = 2)
y_text3 <- c(t(Nature3_p)[1, ] / 2, 
             t(Nature3_p)[1, ]  + t(Nature3_p)[2, ] / 2)
text(rep(b3, 2), y_text3, labels = c(Nature3))
legend("top", fill = cols[2:1], legend = rev(colnames(Nature2)))
title(main = "Smoking Habits of Identical Twins")
mosaicplot(Nature3, 
           col = cols[3:2], 
           main = "Smoking Habits of Identical Twins", 
           xlab = "Lived Together?", 
           ylab = "Resemblance")

DollnHill <- matrix(c(24, 38, 208, 242, 196, 201, 164, 118, 45, 23), nrow = 2)
rownames(DollnHill) <- c("Lung Cancer", "Control")
colnames(DollnHill) <- c("1-4", "5-14", "15-24", "25-49", "50 more")
DollnHill_p <- prop.table(DollnHill, margin = 1) * 100
c4 <- ncol(DollnHill)
b4 <- barplot(t(DollnHill_p), space = 0.8, col = cols[1:5], yaxt = "n")
axis(side = 2,
     at = apply(t(DollnHill_p), MARGIN = 2, cumsum),
     labels = format(apply(t(DollnHill_p), MARGIN = 2, cumsum), digits = 2, nsmall = 1), las = 2)
y_text4 <- c(t(DollnHill_p)[1, ] / 2, 
            t(DollnHill_p)[1, ]  + t(DollnHill_p)[2, ] / 2, 
            t(DollnHill_p)[1, ]  + t(DollnHill_p)[2, ] + t(DollnHill_p)[3, ] / 2,
            t(DollnHill_p)[1, ]  + t(DollnHill_p)[2, ] + t(DollnHill_p)[3, ] + t(DollnHill_p)[4, ] / 2,
            t(DollnHill_p)[1, ]  + t(DollnHill_p)[2, ] + t(DollnHill_p)[3, ] + t(DollnHill_p)[4, ] + t(DollnHill_p)[5, ] / 2)
text(rep(b4, 5), y_text4, labels = c(DollnHill))
legend("top", fill = cols[5:1], legend = rev(colnames(DollnHill)))
title(main = "Retrospective Study : Doll & Hill")
mosaicplot(DollnHill, 
           col = cols[1:5], 
           main = "Retrospective Study : Doll & Hill", 
           xlab = "Group", 
           ylab = "Number of Cigarettes Smoked")
chisq.test(DollnHill)

DollnHill2 <- matrix(c(7, 17, 141, 162, 133, 157, 96, 74, 21, 16), nrow = 2)
rownames(DollnHill2) <- c("Lung Cancer", "Control")
colnames(DollnHill2) <- c("1-4", "5-14", "15-24", "25-49", "50 more")
DollnHill2_p <- DollnHill2 / DollnHill * 100
c5 <- ncol(DollnHill2)
b5 <- barplot(t(DollnHill2_p), space = 0.8, col = cols[1:5], yaxt = "n")
y_text5 <- c(t(DollnHill2_p)[1, ] / 2, 
             t(DollnHill2_p)[1, ]  + t(DollnHill2_p)[2, ] / 2, 
             t(DollnHill2_p)[1, ]  + t(DollnHill2_p)[2, ] + t(DollnHill2_p)[3, ] / 2,
             t(DollnHill2_p)[1, ]  + t(DollnHill2_p)[2, ] + t(DollnHill2_p)[3, ] + t(DollnHill2_p)[4, ] / 2,
             t(DollnHill2_p)[1, ]  + t(DollnHill2_p)[2, ] + t(DollnHill2_p)[3, ] + t(DollnHill2_p)[4, ] + t(DollnHill2_p)[5, ] / 2)
text(rep(b5, 5), y_text5, labels = paste0(format(c(DollnHill2_p), digits = 3, nsmall = 1), "%"))
legend("top", fill = cols[5:1], legend = rev(colnames(DollnHill2)))
title(main = "Percentage of Inhalers")
# mosaicplot(DollnHill2_p, 
#            col = cols[1:5], 
#            main = "Percentage of Inhalers", 
#            xlab = "Group", 
#            ylab = "Percentage")

library(tidyverse)
Nature1_tbl <- Nature1 %>%
  as_tibble %>%
  mutate(Twins = row.names(Nature1)) %>%
  gather(key = "Resemblance", value = "Counts", -Twins) %>%
  mutate(Twins = factor(Twins, levels = c("Identical", "Fraternal")),
         Resemblance = factor(Resemblance, levels = c("Alike", "Somewhat_Alike", "Not_Alike")))
Nature1_tbl
Nature2_tbl <- Nature2 %>%
  as_tibble %>%
  mutate(Twins = row.names(Nature2)) %>%
  gather(key = "Resemblance", value = "Counts", -Twins) %>%
  mutate(Twins = factor(Twins, levels = c("Identical", "Fraternal")),
         Resemblance = factor(Resemblance))
Nature3_tbl <- Nature3 %>%
  as_tibble %>%
  mutate(Separation = row.names(Nature3)) %>%
  gather(key = "Resemblance", value = "Counts", -Separation) %>%
  mutate(Separation = factor(Separation),
         Resemblance = factor(Resemblance) )
DollnHill_tbl <- DollnHill %>%
  as_tibble %>%
  mutate(Group = row.names(DollnHill)) %>%
  gather(key = "Smoking", value = "Counts", -Group) %>%
  mutate(Group = factor(Group, 
                        levels = c("Lung Cancer", "Control"), 
                        labels = c("Lung_Cancer", "Control")),
         Smoking = factor(Smoking, labels = c("1-4", "5-14", "15-24", "25-49", "50_more")))
