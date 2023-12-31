base_template <- function(font_color="#535657"){ 
  
  baseTemplate <- theme_minimal()+
    theme(text = element_text(family = "Arial"),
                panel.grid = element_blank(),
                plot.title = element_text(size = 14,face = "bold", color = font_color, hjust = 0.5, vjust = -1),
                axis.title.x = element_text(size = 9, face = "bold", color = font_color, vjust = -2),
                axis.title.y = element_text(size = 9, face = "bold", color = font_color),
                axis.text.x = element_text(size = 10, face = "bold", color = font_color),
                axis.text.y = element_text(size = 10, face = "bold", color = font_color),
                axis.ticks.x = element_line(color = "#b2b2b2"),
                plot.caption = element_markdown(size = 7,face = "bold", color = "#535657", hjust = 1.25, vjust = -1))
  
  return(baseTemplate)
}
