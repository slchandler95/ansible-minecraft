
$test2 = Invoke-WebRequest -Uri 'https://api.curseforge.com/v1/mods/711537/files' -Method 'GET' -Headers $Headers
$test3 = Invoke-WebRequest -Uri 'https://api.curseforge.com/v1/mods/711537' -Method 'GET' -Headers $Headers
$test4 = Invoke-WebRequest -Uri 'https://api.curseforge.com/v1/mods/458201/files' -Method 'GET' -Headers $Headers
$test5 = Invoke-WebRequest -Uri 'https://api.curseforge.com/v1/mods/711537/files/4119443' -Method 'GET' -Headers $Headers
$test6 = Invoke-WebRequest -Uri "https://api.curseforge.com/v1/mods/search?searchFilter='the_vault'" -Method 'GET' -Headers $Headers
$test7 = Invoke-WebRequest -Uri 'https://api.curseforge.com/v1/mods/458203' -Method 'GET' -Headers $Headers

$Headers = @{
'Accept' = 'application/json'
#'x-api-key' = '$2a$10$uVxDr1D3KcmntzxeMsm37OWKMbAQ.swm9TnsgeW3fUvwE/rySuifm'
'x-api-key' = '$2a$10$bL4bIL5pUWqfcO7KQtnMReakwtfHbNKh6v1uTpKlzhwoueEJQnPnm'
}