{
:local pass "23DHa92"
:local oldpass [/interface pptp-client get pptp-out1 password]
:if ($pass != $oldpass) do={
/interface pptp-client set password=$pass [find name~"pptp"]
}
/file remove update-pptp.rsc
}
