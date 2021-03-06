Country <- c("Australia", "Canada", "Denmark", "Finland", "Great_Britain", "Iceland", "Netherlands", "Norway", "Sweden", "Switzerland", "USA")
Cigar_Consump <- c(480, 500, 380, 1100, 1100, 230, 490, 250, 300, 510, 1300)
Deaths_Rates <- c(180, 150, 170, 350, 460, 60, 240, 90, 110, 250, 200)
sapply(list(Country, Cigar_Consump, Deaths_Rates), length)
Smoking_Country <- data.frame(Cigar_Consump, Deaths_Rates, row.names = Country)
plot(Deaths_Rates ~ Cigar_Consump, data = Smoking_Country, type = "n", xlab = "", ylab = "")
text(x = Cigar_Consump, y = Deaths_Rates, labels = rownames(Smoking_Country))
title(main = "Countries that Smoke", xlab = "per Capita Cigarette Consumption", ylab = "Deaths per million")
corr <- cor(Smoking_Country$Cigar_Consump, Smoking_Country$Deaths_Rates)
text(x = 800, y = 400, labels = paste0("r = ", format(corr, digits = 2, nsmall = 2)), cex = 2, col = "red")