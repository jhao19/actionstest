curl --location -X POST "https://api.notion.com/v1/comments" \
    --header "Notion-Version: 2022-06-28" \
    --header "Content-Type: application/json" \
    --header "Authorization: Bearer $2" \
    --data-raw "{
        \"parent\": {
            \"page_id\": \"$1\"
        },
        \"rich_text\": [
            {
                \"text\": {
                    \"content\": \"$3\"
                }
            }
        ]
    }"