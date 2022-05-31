data("Journals", package = "AER")

journals = Journals[, c('subs', 'price')]
journals$citeprice = Journals$price / Journals$citations

attach(journals)
jour_lm = lm(log(subs) ~ log(citeprice), data = journals)
plot(log(subs) ~ log(citeprice), data = journals)
abline(jour_lm)

anova(jour_lm)






