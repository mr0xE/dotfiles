Invoke-Expression (&starship init powershell)
$ENV:STARSHIP_CONFIG = "$HOME\.config\starship.toml"

Import-Module PSReadLine

Set-PSReadLineOption -PredictionViewStyle ListView

Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

Set-PSReadLineOption -HistorySearchCursorMovesToEnd

Set-PSReadLineOption -PredictionSource HistoryAndPlugin

Set-PSReadLineOption -Colors @{ InlinePrediction = '#9CA3AF'}

Import-Module -Name Terminal-Icons