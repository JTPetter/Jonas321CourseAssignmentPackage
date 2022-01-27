cheat <- function(assign_no){
  assign_no <- paste("Q", assign_no, sep = "")
  all_answers <- list("Q1" = "some_data <- rnorm(n = 100) \n boxplot(some_data)",
                      "Q2" = "schiphol_data <- read.csv('https://raw.githubusercontent.com/hannesrosenbusch/schiphol_class/master/schiphol_data.csv') \n plot(x = schiphol_data$DATE, y = schiphol_data$TAVG, xlab = 'Year', ylab = 'Average Temp.')",
                      "Q5" = "plot(mtcars$cyl, mtcars$hp, xlab = 'No. of Cylinders', ylab = 'Horsepower', xaxt = 'n', cex = 1.5, pch = 18) \n axis(side = 1, at = c(4, 6, 8))",
                      "Q7" = "ggplot() + geom_smooth(Orange, mapping = aes(x = age, y = circumference), method = 'lm')")
  if(assign_no %in% names(all_answers)){
    cat(all_answers[[assign_no]])
  } else { 
    print("Sorry, I only got the answers for Q1, Q2, Q5, and Q7 :/")}
}
