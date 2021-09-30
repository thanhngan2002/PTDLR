# tạo ra dãy số id
id <- c(1:18, 1:14)
# group 1=urban 2=rural và cần phải xác định group là một “factor”
group <- c(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
               2,2,2,2,2,2,2,2,2,2,2,2,2,2)
group <- as.factor(group)
# nhập dữ liệu
age <- c(109,113,115,116,119,120,121,124,126,129,130,133,134,135,
               137,139,141,142,
               121,121,128,129,131,132,133,134,138,138,138,140,140,140)
height <- c(137.6,147.8,136.8,140.7,132.7,145.4,135.0,133.0,148.5,
                  148.3,147.5,148.8,133.2,148.7,152.0,150.6,165.3,149.9,
                  139.0,140.9,134.9,149.5,148.7,131.0,142.3,139.9,142.9,
                  147.7,147.7,134.6,135.8,148.5)
# tạo một data frame
data <- data.frame(id, group, age, height)
attach(data)
# Kiểm chứng xem giữa các nhóm học sinh có sự khác biệt với độ tuổi không
tapply(age, group, mean)
boxplot(age ~ group,
        xlab = "Fracture: 1=urban, 0 = urral", ylab = "age")
t.test(age ~ group) 
logistic <- glm(group ~ age, family = "binomial")
summary(logistic)
# Xem xét số liệu ta thấy p-value < 0.05 nên 
# đủ bằng chứng để bác bỏ H0 => chấp nhận Ha với mức ý nghĩa 5%
# nhóm học sinh nông thôn và thành thị có sự khác biệt về tuổi

#Kiểm chứng xem giữa các nhóm học sinh có sự khác biệt về chiều cao không
tapply(height, group, mean)
boxplot(height ~ group,
        xlab = "Fracture: 1=urban, 0 = urral", ylab = "height")
t.test(height ~ group) 
logistic <- glm(group ~ height, family = "binomial")
summary(logistic)
# Xem xét số liệu ta thấy p-value > 0.05 nên 
# không đủ bằng chứng bác bỏ Ho => chấp nhận Ho với mức ý nghĩa 5%
# nhóm học sinh nông thôn và thành thị có chiều cao như nhau
