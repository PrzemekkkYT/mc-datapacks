#####################
# uninstall process #
#####################
tellraw @s {"text":"Czy na pewno chcesz odinstalować whitepack? Jeśli tak, kliknij na ten tekst, aby potwierdzić.","color":"red","clickEvent":{"action":"run_command","value":"/function whitepack:do_not_use_this_function_or_you_will_uninstall_entire_datapack"},"hoverEvent":{"action":"show_text","contents":[{"text":"Kliknięcie na tekst spowoduje usunięcie wszystkich danych paczki whitepack","color":"red"}]}}