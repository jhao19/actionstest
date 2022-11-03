curl --location -X PATCH "https://api.notion.com/v1/pages/$1" \
    --header "Notion-Version: 2022-06-28" \
    --header "Content-Type: application/json" \
    --header "Authorization: Bearer $2" \
    --data-raw "{
        \"properties\": {
            \"GitHub URL\": { \"url\": \"$3\" }
        }
    }"