scripts <- list.files("figures", "*.R$", full.names = TRUE)
scripts <- scripts[!grepl("all", scripts)]
for (s in scripts) {
    print(s)
    tryCatch(source(s), 
        error = function(e) message(e))
}
