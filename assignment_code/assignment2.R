library(readr)
library(visNetwork)
## Download and save file as emailEucore.tsv from
## http://snap.stanford.edu/data/email-Eu-core.html
mail_data <- read_delim("./emailEucore.tsv",
                        delim = " ",
                        col_names = F,
                        col_types = c("iii"),
                        comment = "#")
colnames(mail_data) <- c("From", "To", "Timestamp")

## Subset data for first 100 rows
use_data <- mail_data[1:100, ]

## Break down timestamp into discrete values
breaks_time <- scales::pretty_breaks()(use_data$Timestamp)
edge_colours <- c("red", "brown","blue", "green",
                  "orange", "pink", "yellow", 
                  "black", "magenta")[1:(length(breaks_time)-1)]
use_data$linkColour <- cut(use_data$Timestamp, breaks = breaks_time,
                          labels = edge_colours)

all_nodes <- c(unique(c(use_data$From, use_data$To)))
label_nodes <- paste(all_nodes)

nodes <- data.frame(id = all_nodes,
                    label = label_nodes)
edges <- data.frame(from = use_data$From,
                    to = use_data$To,
                    title = paste("Timestamp:", use_data$Timestamp),
                    color = use_data$linkColour,
                    arrows = c("to", "from"),
                    smooth = F)

visNetwork(nodes, edges, main = "Email Network Graph") %>%
  visOptions(highlightNearest = list(enabled =TRUE, degree = 1)) %>%
  visLegend(useGroups = FALSE,
            addNodes = data.frame(label = "User IDs", shape = "circle"), 
            addEdges = data.frame(label = paste0(seq(0,25,5), "-",
                                                 seq(5, 30, 5)),
                                  color = edge_colours))
