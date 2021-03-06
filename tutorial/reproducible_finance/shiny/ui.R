# ui.R -------------------------------------------------------------------------
shinyUI(fluidPage(
  
  # Application title
  titlePanel("데이터 사이언스 언어 R - 기계 이미지 인식"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      # Image Input: Select a file ----
      fileInput("img_file", "Choose Image file: ", accept = c('image/png', 'image/jpeg')),
      
      # Horizontal line ----
      tags$hr(),
      
      # Check Keon-Woong Moon image ----
      checkboxInput("flag_check", "기본 예제 사진(태극기)", FALSE)
    ),
    
    # Show Image & Keras Output
    mainPanel(
      imageOutput("uploaded_image", height = 300),
      DT::dataTableOutput("keras_table")
    )
  )
))

