Write-Host "INICIANDO AUDITORÍA ESTÁTICA IEEE 1028"

$errores = 0

Write-Host "Revisando validación de entrada..."
if (Select-String -Path "./DemoAuditApp/Program.cs" -Pattern "int.Parse") {
    Write-Host "ERROR: Uso de int.Parse sin validación"
    $errores++
}

Write-Host "Revisando manejo de excepciones..."
if (-not (Select-String -Path "./DemoAuditApp/Program.cs" -Pattern "try")) {
    Write-Host "ERROR: No existe manejo de excepciones"
    $errores++
}

Write-Host "Revisando documentación..."
if (-not (Select-String -Path "./DemoAuditApp/Program.cs" -Pattern "///")) {
    Write-Host "ERROR: No existe documentación XML"
    $errores++
}

Write-Host "Revisando logging..."
if (-not (Select-String -Path "./DemoAuditApp/Program.cs" -Pattern "Log|ILogger")) {
    Write-Host "ADVERTENCIA: No existe logging"
    $errores++
}

if ($errores -gt 0) {
    Write-Host "AUDITORÍA FALLIDA - Defectos encontrados: $errores"
    exit 1
} else {
    Write-Host "AUDITORÍA EXITOSA"
    exit 0
}
