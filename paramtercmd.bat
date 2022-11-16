@echo off
set /p "cardVar=card: "
set /p "companyVar=company: "


curl -d "card=%cardVar%&company=%companyVar%" -i -X POST http://Hasannelta:1119f427a6e0505395fd6db49d8cee9bee@localhost:8080/job/parameter/buildWithParameters

    