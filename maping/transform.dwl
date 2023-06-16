%dw 2.0
output application/json
---
payload map
{
EmpName: $.name,
BossName: (payload filter ((item, index) -> $.bossID == item.ID)).name reduce ($ ++ $$)
}