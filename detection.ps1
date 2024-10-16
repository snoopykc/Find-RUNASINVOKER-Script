$searchPaths = @("C:\Users\", "C:\ProgramData\")

$pattern = "__COMPAT_LAYER=RUNASINVOKER"

$found = $false

foreach ($path in $searchPaths) {
    Get-ChildItem -Path $path -Filter "*.bat" -Recurse -ErrorAction SilentlyContinue | ForEach-Object {
        $content = Get-Content $_.FullName -ErrorAction SilentlyContinue
        if ($content -match $pattern) {
            $found = $true
            Write-Host "Batch script found: $($_.FullName)"
        }
    }
}

if ($found) {
    Write-Host "Detected RUNASINVOKER batch script"
    exit 1
    
} else {
    Write-Host "No RUNASINVOKER batch script detected"
    exit 0

}
