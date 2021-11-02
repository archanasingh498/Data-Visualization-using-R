
library(ggplot2)
library(ggrepel)
home_sales = read.csv("D:\\MS\\Fall2021_Data_Visualization\\Homework4\\SWD.csv", check.names = FALSE)

home_sales$monthname = factor(home_sales$monthname, levels = month.abb)

p <- ggplot(data = home_sales, mapping = aes(x = monthname, y = Year2019))
p + geom_line(colour = "red", aes(group = 1)) +
  geom_line(colour = "#408FA6")


ggplot(home_sales, aes(x=monthname)) + 
  scale_y_continuous(labels=dollar_format(prefix="$")) +
  labs(x = "", y = "", title="Average monthly home sales in Hamilton 2019-2021", size = 4) +
  theme(plot.title = element_text(size=18,hjust=0.5),axis.title = element_text(size=16,face="bold"),axis.text=element_text(size=12,face="bold")) +
  geom_text(x=7, y=569000, label="$565,640", color = "red") +
  geom_text(x=9, y=565000, label="July 2021 marks the highest average
                price of homes in Hamilton.", color = "black") +
  geom_text(x=10, y=460000, label="$461,567", color = "seagreen4") +
  geom_text(x=6, y=460000, label="Oct 2019 had the lowest average price of homes in Hamilton.") +
  geom_text(x=8, y=530000, label="2021", color = "seagreen4") +
  geom_text(x=12, y=469000, label="2019", color = "orange4") +
  geom_text(x=12, y=483000, label="2020", color="blue") +
  geom_line(aes(y = Year2019),  size = 1, color = "orange4", group = 1) + geom_point(aes(y = Year2019)) +
  geom_line(aes(y = Year2020),  size = 1, color="blue", group = 1) + geom_point(aes(y = Year2020)) + 
  geom_line(aes(y = Year2021), size = 2, color="seagreen4", group = 1) + geom_point(aes(y = Year2021)) + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(legend.position = "top")