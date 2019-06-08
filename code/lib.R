theme_report <- function(base_size = 11,
                         strip_text_size = 12,
                         strip_text_margin = 5,
                         subtitle_size = 13,
                         subtitle_margin = 10,
                         plot_title_size = 16,
                         plot_title_margin = 10,
                         ...) {
    require(ggplot2)
    ret <- theme_minimal(base_family = "Roboto-Regular",
                         base_size = base_size, ...)
    ret$strip.text <- element_text(
        hjust = 0,
        size = strip_text_size,
        margin = margin(b = strip_text_margin),
        family = "Roboto-Bold"
    )
    ret$plot.subtitle <- element_text(
        hjust = 0,
        size = subtitle_size,
        margin = margin(b = subtitle_margin),
        family = "PT Sans"
    )
    ret$plot.title <-
        element_text(
            hjust = 0,
            size = plot_title_size,
            margin = margin(b = plot_title_margin),
            family = "Oswald"
        )
    ret
}

read_imported_data <- function(){
    read_csv(here::here("data/50_startups.csv"),
            col_types = "iccdi")
}
