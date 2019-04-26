# ui.R -------------------------------------------------------------------------
shinyUI(fluidPage(
  
  # Application title
  titlePanel("The R Meetup with Keon-Woong Moon"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      # Image Input: Select a file ----
      fileInput("img_file", "Choose Image file", accept = c('image/png', 'image/jpeg')),
      
      # Horizontal line ----
      tags$hr(),
      
      # Check Keon-Woong Moon image ----
      checkboxInput("moon_check", "If you want to classify Keon-Woong Moon photo", FALSE)
    ),
    
    # Show Image & Keras Output
    mainPanel(
      imageOutput("uploaded_image", height = 300),
      DT::dataTableOutput("keras_table")
    )
  )
))

