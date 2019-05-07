# ui.R -------------------------------------------------------------------------
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Data Science Language R - Image Recognition"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      # Image Input: Select a file ----
      fileInput("img_file", "Choose Image file: ", accept = c('image/png', 'image/jpeg')),
      
      # Horizontal line ----
      tags$hr(),
      
      # Check Keon-Woong Moon image ----
      checkboxInput("flag_check", "Default Image (Flag)", FALSE)
    ),
    
    # Show Image & Keras Output
    mainPanel(
      imageOutput("uploaded_image", height = 300),
      DT::dataTableOutput("keras_table")
    )
  )
))

