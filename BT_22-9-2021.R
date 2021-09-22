library(ISwR) 

igfdata <- juul$igf1 
head(igfdata)
options(width=100)
setwd("c:/works/stats")
igfdata <- read.table("igf.txt", header=TRUE, na.strings=".")
attach(igfdata)
names(igfdata)
igfdata
# Vi du 9
mean(age)
var(age)
sd(age)
summary(age)

desc <- function(x)
{
  av <- mean(x)
  sd <- sd(x)
  se <- sd/sqrt(length(x))
  c(MEAN=av, SD=sd, SE=se)
}
desc(als)
summary(igfdata)
by(igfdata, sex, summary)
op <- par(mfrow=c(2,3))
hist(igfi)
hist(igfbp3)
hist(als)
hist(pinp)
hist(ictp)
hist(p3np)
tapply(igfi, list(sex), mean)
tapply(igfi, list(ethnicity, sex), mean)
# Vi du 10
qt(0.95, 100)
t.test(age, mu=30)
# Vi du 11
t.test(igfi~ sex)
t.test(igfi~ sex, var.equal=TRUE)
shapiro.test(igfi)
wilcox.test(igfi ~ sex)
# Vi du 12
# # nhập dữ kiện
before <- c(180, 140, 160, 160, 220, 185, 145, 160, 160, 170)
after <- c(170, 145, 145, 125, 205, 185, 150, 150, 145, 155)
bp <- data.frame(before, after)
# kiểm định t
t.test(before, after, paired=TRUE)
t.test(before, after)
wilcox.test(before, after, paired=TRUE)
table(sex)
table(ethnicity)
table(sex, ethnicity)
# tạo ra một object tên là freq để chứa kết quả tần số
freq <- table(sex, ethnicity)
# kiểm tra kết quả
freq
# dùng hàm margin.table để xem kết quả
margin.table(freq, 1)
margin.table(freq, 2)
#tính phần trăm bằng hàm prop.table
prop.table(freq, 1)
# tính phần trăm bằng hàm prop.table
prop.table(freq, 2)
# tính phần trăm cho toàn bộ bảng
freq/sum(freq)
# Vi du 13
prop.test(69, 100, 0.50)
binom.test(69, 100, 0.50)
# Vi du 14
fracture <- c(7, 20)
total <- c(100, 110)
prop.test(fracture, total)
table(sex, ethnicity)
female <- c( 4, 43, 22, 0)
total <- c(8, 60, 30, 2)
prop.test(female, total)
chisq.test(sex, ethnicity)
fisher.test(sex, ethnicity)
