$Query = [IO.File]::ReadAllText(".\command.txt")
$Delete = [IO.File]::ReadAllText(".\delete.txt")
$Content = (Invoke-Expression $Query).Content
$list = New-Object System.Collections.Generic.List[string]
while($Content.Contains("id")){
    $list.Add($Content.Substring($Content.IndexOf("id")+5,16))
    $Content = $Content.Remove($Content.IndexOf("id")-1,23)
}
$count = 0
foreach($id in $list){
    $index = $Delete.IndexOf("products/") + 9
    $Delete = $Delete.Remove($index,16).Insert($index,$id)
    Invoke-Expression $Delete
    $count++
}

Write-Host "$count products deleted"