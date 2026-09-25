#!/bin/bash
set -e
cd ~/lab1v11

echo "5 больших обычных файлов"
ls -lR | grep '^-' | grep -v 'copy' | sort -k5,5nr | head -n 5

echo "str про Нагиева и Баринова"
grep -rhiE 'нагиев|баринов' claude_monet archive | grep -vi 'реклам' | sort -r | head -n 5

echo "кол-во файлов с соч поставщик"
grep -rli 'поставщик' claude_monet/contracts claude_monet/owner_office | wc -l

echo "первая и ласт str договоров"
{
    head -q -n 1 claude_monet/contracts/supplier_contract claude_monet/contracts/concert_contract
    tail -q -n 1 claude_monet/contracts/supplier_contract claude_monet/contracts/concert_contract
} | grep -iE 'поставщик|музыкант|оплат' | sort

echo "кол-во слов после фильтра meeting_notes"
cat claude_monet/owner_office/meeting_notes | grep -vi 'согласен' | grep -iE 'меню|кухн' | sort -r | wc -w

echo "символ ссылки"
ls -lR | grep '^l' | sort -k9,9r

echo "Кол-во слов в рекламных str"
grep -hi 'реклам' claude_monet/owner_office/advertising_backup/* | grep -v 'Нагиев' | sort | wc -w