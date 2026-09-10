foreach ($p in 'src\MTG.Api\MTG.Api.csproj','src\MTG.Database.Models\MTG.Database.Models.csproj') {
    $c = (Get-Content $p -Raw).Replace('<TargetFramework>net8.0</TargetFramework>','<TargetFramework>net10.0</TargetFramework>')
    [System.IO.File]::WriteAllText((Resolve-Path $p), $c, (New-Object System.Text.UTF8Encoding($false)))
}