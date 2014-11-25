
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {

  output$envInfo <- renderTable({
      data.frame(Sys.info())
  })
  output$pyTest<- renderText({
      input$updateTime
      x<-system("python python/test.py", intern = T)
  })
  

})
