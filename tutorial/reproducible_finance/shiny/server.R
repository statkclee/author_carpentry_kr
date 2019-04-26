# server.R -------------------------------------------------------------------------
server <- function(input, output, session) {
  
  output$uploaded_image <- renderImage({
    
    src <- input$img_file
    src <- src$datapath
    
    if (is.null(src)) {
      list(src = "www/moon.jpg",
           height = "300",
           alt = "Classify Image")
    } else {
      return(list(
        src = src,
        height = "300",
        alt = "Classifed Image"
      ))
    }
    
  }, deleteFile = FALSE)
  
  output$keras_table <- DT::renderDataTable({
    
    uploaded_img_file <- input$img_file
    uploaded_img_path <- uploaded_img_file$datapath
    
    if (is.null(uploaded_img_path)) {
      if(input$moon_check) {
        withProgress(message = 'Predicting...', value = 1,
                     classify_image("www/moon.jpg")
        )
      } else {
        NULL   
      }
    } else {
      withProgress(message = 'Predicting...', value = 1,
                   img2tbl_df <- classify_image(uploaded_img_path)
      )
      DT::datatable(img2tbl_df)
    }
  })
}

