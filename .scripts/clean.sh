#!/bin/bash
set -e
cd ~/lab1v11

rm claude_monet/owner_office/nagiev_call_copy
rm owner_contract
rm claude_monet/owner_office/hall_access
rm claude_monet/contracts/supplier_duplicate
rm claude_monet/contracts/nagiev_call
rm claude_monet/hall/vip_guests
rmdir claude_monet/hall
rmdir claude_monet/advertising
rm -r claude_monet/owner_office/advertising_backup

echo "Удаление завершено"

ls -lR